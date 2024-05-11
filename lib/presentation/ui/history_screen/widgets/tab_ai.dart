import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/filters/selectable_chips.dart';

import '../../../gen/assets.gen.dart';
import '../blocs/history_cubit.dart';
import 'message_box.dart';

class TabAI extends StatefulWidget {
  const TabAI({super.key});

  @override
  State<TabAI> createState() => _TabAIState();
}

enum FilterAI { chatgpt, gemini }

class _TabAIState extends State<TabAI> {
  @override
  void initState() {
    context.read<HistoryCubit>().getListChatGpt();
    context.read<HistoryCubit>().getListChatGemini();
    super.initState();
  }

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
              });
            },
          ),
          const SizedBox(height: 10),
          if (filterAI == FilterAI.chatgpt &&
              context.read<HistoryCubit>().state.listChatGpt != null)
            ...(context.read<HistoryCubit>().state.listChatGpt!.response!.map(
                  (e) => MessageBox(
                    avatar: AssetImage(Assets.images.icons.chatgpt.path),
                    title: 'Chat GPT',
                    content: e.Title ?? "",
                    time: e.createdAt ?? "",
                    voidCallback: () {},
                  ),
                )),
          if (filterAI == FilterAI.gemini &&
              context.read<HistoryCubit>().state.listChatGemini != null)
            ...(context
                .read<HistoryCubit>()
                .state
                .listChatGemini!
                .response!
                .map(
                  (e) => MessageBox(
                    avatar: AssetImage(Assets.images.icons.gemini.path),
                    title: 'Gemini',
                    content: e.Title ?? "",
                    time: e.createdAt ?? "",
                    voidCallback: () {},
                  ),
                )),
        ],
      ),
    );
  }
}
