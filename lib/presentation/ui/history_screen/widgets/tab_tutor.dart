import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_mentor_mobile/presentation/router/router_config/router_config.dart';
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
    context
        .read<HistoryCubit>()
        .getListQuestion(context.read<HistoryCubit>().state.currentTabTutor);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HistoryCubit, HistoryState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            SelectableChips<QuestionStatus>(
              padding: const EdgeInsets.only(left: 8, right: 8),
              selected: <QuestionStatus>{}..add(state.currentTabTutor),
              data: const [
                // ChipData(
                //   value: QuestionStatus.PENDING,
                //   label: "Pending",
                // ),
                ChipData(
                  value: QuestionStatus.NEW,
                  label: 'Mới',
                ),
                ChipData(
                  value: QuestionStatus.ACCEPTED,
                  label: 'Đã Chấp nhận',
                ),
                // ChipData(
                //   value: QuestionStatus.REJECTED,
                //   label: 'Rejected',
                // ),
                ChipData(
                  value: QuestionStatus.ANSWERED,
                  label: 'Đã trả lời',
                ),
                ChipData(
                  value: QuestionStatus.DONE,
                  label: 'Hoàn thành',
                ),
                ChipData(
                  value: QuestionStatus.EXPIRED,
                  label: 'Hết hạn',
                ),
              ],
              onSelect: (value) {
                context.read<HistoryCubit>().setTabTutor(value);
                context.read<HistoryCubit>().getListQuestion(value);
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
                    child: state.listQuestion.isNotEmpty
                        ? ListView.separated(
                            itemCount: state.listQuestion.length,
                            separatorBuilder: (context, index) =>
                                const Divider(),
                            itemBuilder: (context, index) {
                              return MessageBox(
                                avatar:
                                    AssetImage(Assets.images.logo.logo.path),
                                title: state.listQuestion[index].title ??
                                    "Câu hỏi",
                                content:
                                    state.listQuestion[index].tutor?.fullName ??
                                        "Đang tìm người hướng dẫn",
                                time: state.listQuestion[index].createdAt,
                                voidCallback: () {
                                  if (state.listQuestion[index].questionId !=
                                      null) {
                                    DetailedQuestionRouteData(
                                            questionId: state
                                                    .listQuestion[index]
                                                    .questionId ??
                                                "")
                                        .push(context);
                                  }
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
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 20),
                                      child: Text(
                                          "Bạn không có câu hỏi nào tại trạng thái hiện tại"),
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
      },
    );
  }
}
