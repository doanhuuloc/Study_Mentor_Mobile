import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_mentor_mobile/presentation/gen/locale/app_localizations.dart';
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
    context.read<HistoryCubit>().refreshhData(HistoryFilter.question);
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
              data: [
                ChipData(
                  value: QuestionStatus.NEW,
                  label: S.of(context).neW,
                ),
                ChipData(
                  value: QuestionStatus.ACCEPTED,
                  label: S.of(context).accepted,
                ),
                ChipData(
                  value: QuestionStatus.ANSWERED,
                  label: S.of(context).answered,
                ),
                ChipData(
                  value: QuestionStatus.DONE,
                  label: S.of(context).done,
                ),
                ChipData(
                  value: QuestionStatus.EXPIRED,
                  label: S.of(context).expired,
                ),
              ],
              onSelect: (value) {
                context.read<HistoryCubit>().setTabTutor(value);
                context.read<HistoryCubit>().refreshhData(
                      HistoryFilter.question,
                      questionStatus: value,
                    );
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
                      context
                          .read<HistoryCubit>()
                          .refreshhData(HistoryFilter.question);
                    },
                    child: state.listQuestion.isNotEmpty
                        ? ListView.separated(
                            itemCount: state.listQuestion.length,
                            separatorBuilder: (context, index) =>
                                const Divider(),
                            itemBuilder: (context, index) {
                              return MessageBox(
                                avatar: AssetImage(Assets.images.logoPng.path),
                                title: state.listQuestion[index].title ??
                                    S.of(context).question,
                                content:
                                    state.listQuestion[index].tutor?.fullName ??
                                        S.of(context).findingIntructor,
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
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Text(S.of(context).emptyQuestion),
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
