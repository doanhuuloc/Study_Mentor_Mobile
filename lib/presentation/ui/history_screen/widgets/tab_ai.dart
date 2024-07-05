import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_mentor_mobile/presentation/gen/locale/app_localizations.dart';
import 'package:study_mentor_mobile/presentation/router/router_config/router_config.dart';
import 'package:study_mentor_mobile/presentation/shared/base_infinite_loading/app_shimmer.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/filters/selectable_chips.dart';

import '../../../../application/services/ai/dto/enum.dart';
import '../../../gen/assets.gen.dart';
import '../blocs/history_cubit.dart';
import '../blocs/history_state.dart';
import 'message_box.dart';

class TabAI extends StatefulWidget {
  const TabAI({super.key});

  @override
  State<TabAI> createState() => _TabAIState();
}

class _TabAIState extends State<TabAI> {
  FilterAI filterAI = FilterAI.chatgpt;

  @override
  void initState() {
    context.read<HistoryCubit>().refreshhData(HistoryFilter.chatGpt);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        SelectableChips<FilterAI>(
          padding: const EdgeInsets.only(left: 8),
          selected: <FilterAI>{}..add(filterAI),
          data: const [
            ChipData(
              value: FilterAI.chatgpt,
              label: "Chat gpt",
            ),
            ChipData(
              value: FilterAI.gemini,
              label: 'Gemini',
            ),
          ],
          onSelect: (value) {
            setState(() {
              filterAI = value;
              if (filterAI == FilterAI.chatgpt) {
                context
                    .read<HistoryCubit>()
                    .refreshhData(HistoryFilter.chatGpt);
              } else {
                context
                    .read<HistoryCubit>()
                    .refreshhData(HistoryFilter.chatGemini);
              }
            });
          },
        ),
        const SizedBox(height: 10),
        Expanded(
          child: BlocBuilder<HistoryCubit, HistoryState>(
            builder: (context, state) {
              if (state.loading) {
                return AppShimmer(
                  child: ListView.separated(
                    itemCount: 10,
                    separatorBuilder: (context, index) => const Divider(),
                    itemBuilder: (context, index) {
                      return const MessageBox(
                        loading: true,
                      );
                    },
                  ),
                );
              }
              return RefreshIndicator(
                onRefresh: () async {
                  if (filterAI == FilterAI.chatgpt) {
                    context
                        .read<HistoryCubit>()
                        .refreshhData(HistoryFilter.chatGpt);
                  } else {
                    context
                        .read<HistoryCubit>()
                        .refreshhData(HistoryFilter.chatGemini);
                  }
                },
                child: state.listChatAI.isNotEmpty
                    ? ListView.separated(
                        itemCount: state.listChatAI.length,
                        separatorBuilder: (context, index) => const Divider(),
                        itemBuilder: (context, index) {
                          return MessageBox(
                            avatar: AssetImage(filterAI == FilterAI.chatgpt
                                ? Assets.images.icons.chatgpt.path
                                : Assets.images.icons.gemini.path),
                            title: filterAI == FilterAI.chatgpt
                                ? 'Chat GPT'
                                : 'Gemini',
                            content: state.listChatAI[index].title ?? "",
                            time: state.listChatAI[index].createdAt ??
                                DateTime.now(),
                            voidCallback: () {
                              ChatAIRouteData(
                                $extra: state.listChatAI[index].roomId,
                                typeAI: filterAI == FilterAI.chatgpt
                                    ? TypeAI.chatgpt
                                    : TypeAI.gemini,
                              ).push(context);
                            },
                          );
                        },
                      )
                    : Row(
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Assets.svgs.emptyData.svg(
                                    height: 150,
                                    width: 150,
                                    color: Colors.amber),
                                const SizedBox(height: 20),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Text(S.of(context).emptyChatAI),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
              );
            },
          ),
        ),
      ],
    );
  }
}
