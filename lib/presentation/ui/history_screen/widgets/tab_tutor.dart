import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_mentor_mobile/presentation/shared/base_infinite_loading/app_shimmer.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/filters/selectable_chips.dart';

import '../../../../application/services/education/education.dart';
import '../../../gen/assets.gen.dart';
import '../blocs/history_cubit.dart';
import '../blocs/history_state.dart';
import 'message_box.dart';

class TabTutor extends StatefulWidget {
  const TabTutor({super.key});

  @override
  State<TabTutor> createState() => _TabTutorState();
}

class _TabTutorState extends State<TabTutor> {
  @override
  void initState() {
    context.read<HistoryCubit>().getListQuestion(QuestionStatus.PENDING);
    super.initState();
  }

  QuestionStatus questionStatus = QuestionStatus.PENDING;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        SelectableChips<QuestionStatus>(
          padding: const EdgeInsets.only(left: 8, right: 8),
          selected: <QuestionStatus>{}..add(questionStatus),
          data: const [
            ChipData(
              value: QuestionStatus.PENDING,
              label: "Pending",
            ),
            ChipData(
              value: QuestionStatus.NEW,
              label: 'New',
            ),
            ChipData(
              value: QuestionStatus.ACCEPTED,
              label: 'Accepted',
            ),
            ChipData(
              value: QuestionStatus.REJECTED,
              label: 'Rejected',
            ),
            ChipData(
              value: QuestionStatus.ANSWERED,
              label: 'Answered',
            ),
            ChipData(
              value: QuestionStatus.EXPIRED,
              label: 'Expired',
            ),
            ChipData(
              value: QuestionStatus.DONE,
              label: 'Done',
            ),
          ],
          onSelect: (value) {
            setState(() {
              questionStatus = value;
              context.read<HistoryCubit>().getListQuestion(value);
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
                onRefresh: () async {},
                child: ListView.separated(
                  itemCount: state.listQuestion.length,
                  separatorBuilder: (context, index) => const Divider(),
                  itemBuilder: (context, index) {
                    return MessageBox(
                      avatar: AssetImage(Assets.images.icons.gemini.path),
                      title: state.listQuestion[index].tutor?.fullName ?? "",
                      content: state.listQuestion[index].content ?? "",
                      time: state.listQuestion[index].createdAt,
                      voidCallback: () {
                        // ChatAIRouteData(
                        //   $extra: listChat[index].roomId,
                        //   typeAI: filterAI == FilterAI.chatgpt
                        //       ? TypeAI.chatgpt
                        //       : TypeAI.gemini,
                        // ).push(context);
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
