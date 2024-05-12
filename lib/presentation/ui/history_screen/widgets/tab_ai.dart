import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_mentor_mobile/presentation/router/router_config/router_config.dart';
import 'package:study_mentor_mobile/presentation/router/router_config/routes/home_branch/home_branch.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/filters/selectable_chips.dart';

import '../../../gen/assets.gen.dart';
import '../blocs/history_cubit.dart';
import '../blocs/history_state.dart';
import 'message_box.dart';

class TabAI extends StatefulWidget {
  const TabAI({super.key});

  @override
  State<TabAI> createState() => _TabAIState();
}

enum FilterAI { chatgpt, gemini }

class _TabAIState extends State<TabAI> {
  FilterAI filterAI = FilterAI.chatgpt;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
          BlocBuilder<HistoryCubit, HistoryState>(
            buildWhen: (previous, current) =>
                previous.listChatGpt != current.listChatGpt ||
                previous.listChatGemini != current.listChatGemini,
            builder: (context, state) {
              return Column(
                children: [
                  if (filterAI == FilterAI.chatgpt &&
                      context.read<HistoryCubit>().state.listChatGpt != null)
                    ...(context.read<HistoryCubit>().state.listChatGpt!.map(
                          (e) => MessageBox(
                            avatar:
                                AssetImage(Assets.images.icons.chatgpt.path),
                            title: 'Chat GPT',
                            content: e.Title ?? "",
                            time: e.createdAt ?? DateTime.now(),
                            voidCallback: () {
                              ChatRouteData($extra: e.roomId).push(context);
                            },
                          ),
                        )),
                  if (filterAI == FilterAI.gemini &&
                      context.read<HistoryCubit>().state.listChatGemini != null)
                    ...(context.read<HistoryCubit>().state.listChatGemini!.map(
                          (e) => MessageBox(
                            avatar: AssetImage(Assets.images.icons.gemini.path),
                            title: 'Gemini',
                            content: e.Title ?? "",
                            time: e.createdAt ?? DateTime.now(),
                            voidCallback: () {
                              ChatRouteData($extra: e.roomId).push(context);
                            },
                          ),
                        )),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
