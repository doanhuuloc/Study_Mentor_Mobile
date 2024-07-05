import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_mentor_mobile/presentation/gen/locale/app_localizations.dart';
import 'package:study_mentor_mobile/presentation/router/router_config/router_config.dart';
import 'package:study_mentor_mobile/presentation/shared/base_infinite_loading/app_shimmer.dart';
import '../../../gen/assets.gen.dart';
import '../blocs/history_cubit.dart';
import '../blocs/history_state.dart';
import 'message_box.dart';

class TabReport extends StatefulWidget {
  const TabReport({super.key});

  @override
  State<TabReport> createState() => _TabReportState();
}

class _TabReportState extends State<TabReport> {
  @override
  void initState() {
    context.read<HistoryCubit>().refreshhData(HistoryFilter.report);
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
                          .refreshhData(HistoryFilter.report);
                    },
                    child: state.listReport.isNotEmpty
                        ? ListView.separated(
                            itemCount: state.listReport.length,
                            separatorBuilder: (context, index) =>
                                const Divider(),
                            itemBuilder: (context, index) {
                              return MessageBox(
                                avatar:
                                    AssetImage(Assets.images.logo.logo.path),
                                title: state.listReport[index].questionTitle ??
                                    S.of(context).question,
                                content: state.listReport[index].questionName ??
                                    S.of(context).findingIntructor,
                                time: state.listReport[index].createdAt,
                                voidCallback: () {
                                  if (state.listReport[index].questionId !=
                                      null) {
                                    DetailedQuestionRouteData(
                                            questionId: state.listReport[index]
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
                                      color: Colors.amber,
                                    ),
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
