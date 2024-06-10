import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_mentor_mobile/application/services/ai/response/src/list_roomchat_response.dart';
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
    context.read<HistoryCubit>().getListChayPay();
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
              List<ListRoomChatResponse> listChat = state.listChatPay;

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
                  context.read<HistoryCubit>().getListChayPay();
                },
                child: ListView.separated(
                  itemCount: listChat.length,
                  separatorBuilder: (context, index) => const Divider(),
                  itemBuilder: (context, index) {
                    return MessageBox(
                      avatar: AssetImage(Assets.images.icons.chatgpt.path),
                      title: 'Ai Hệ thống',
                      content: listChat[index].Title ?? "",
                      time: listChat[index].createdAt ?? DateTime.now(),
                      voidCallback: () {
                        ChatAIRouteData(
                          $extra: listChat[index].roomId,
                          typeAI: TypeAI.pay,
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
