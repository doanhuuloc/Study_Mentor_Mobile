import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_mentor_mobile/presentation/router/router_config/router_config.dart';
import 'package:study_mentor_mobile/presentation/shared/base_infinite_loading/app_shimmer.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/filters/selectable_chips.dart';

import '../../../../application/services/ai/ai.dart';
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
                context.read<HistoryCubit>().getListChatGpt();
              } else {
                context.read<HistoryCubit>().getListChatGemini();
              }
            });
          },
        ),
        const SizedBox(height: 10),
        Expanded(
          child: BlocBuilder<HistoryCubit, HistoryState>(
            builder: (context, state) {
              List<ListRoomChatResponse> listChat = [];
              if (filterAI == FilterAI.chatgpt) {
                listChat = state.listChatGpt;
              } else {
                listChat = state.listChatGemini;
              }

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
                    context.read<HistoryCubit>().getListChatGpt();
                  } else {
                    context.read<HistoryCubit>().getListChatGemini();
                  }
                },
                child: ListView.separated(
                  itemCount: listChat.length,
                  separatorBuilder: (context, index) => const Divider(),
                  itemBuilder: (context, index) {
                    return MessageBox(
                      avatar: AssetImage(Assets.images.icons.chatgpt.path),
                      title:
                          filterAI == FilterAI.chatgpt ? 'Chat GPT' : 'Gemini',
                      content: listChat[index].Title ?? "",
                      time: listChat[index].createdAt ?? DateTime.now(),
                      voidCallback: () {
                        ChatAIRouteData(
                          $extra: listChat[index].roomId,
                          typeAI: filterAI == FilterAI.chatgpt
                              ? TypeAI.chatgpt
                              : TypeAI.gemini,
                        ).push(context);
                      },
                    );
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
