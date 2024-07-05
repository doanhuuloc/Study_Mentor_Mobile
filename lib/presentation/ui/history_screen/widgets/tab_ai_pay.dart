import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_mentor_mobile/presentation/gen/locale/app_localizations.dart';
import 'package:study_mentor_mobile/presentation/router/router_config/router_config.dart';

import '../../../../application/services/ai/dto/enum.dart';
import '../../../gen/assets.gen.dart';
import '../../../shared/base_infinite_loading/app_shimmer.dart';
import '../blocs/history_cubit.dart';
import '../blocs/history_state.dart';
import 'message_box.dart';

class TabAIPay extends StatefulWidget {
  const TabAIPay({super.key});

  @override
  State<TabAIPay> createState() => _TabAIPayState();
}

class _TabAIPayState extends State<TabAIPay> {
  @override
  void initState() {
    context.read<HistoryCubit>().refreshhData(HistoryFilter.chatAiPay);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                      .refreshhData(HistoryFilter.chatAiPay);
                },
                child: state.listChatPay.isNotEmpty
                    ? ListView.separated(
                        itemCount: state.listChatPay.length,
                        separatorBuilder: (context, index) => const Divider(),
                        itemBuilder: (context, index) {
                          return MessageBox(
                            avatar: AssetImage(Assets.images.logoPng.path),
                            title: S.of(context).aISystem,
                            content: state.listChatPay[index].title ??
                                S.of(context).aISystem,
                            time: state.listChatPay[index].createdAt ??
                                DateTime.now(),
                            voidCallback: () {
                              ChatAIRouteData(
                                $extra: state.listChatPay[index].roomId,
                                typeAI: TypeAI.pay,
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
