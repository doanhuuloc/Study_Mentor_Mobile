import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_mentor_mobile/presentation/router/router_config/router_config.dart';

import '../../../../application/services/ai/dto/enum.dart';
import '../../../gen/assets.gen.dart';
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
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          BlocBuilder<HistoryCubit, HistoryState>(
            buildWhen: (previous, current) =>
                previous.listChatPay != current.listChatPay,
            builder: (context, state) {
              return Column(
                children: [
                  ...(context.read<HistoryCubit>().state.listChatPay.map(
                        (e) => MessageBox(
                          avatar: AssetImage(Assets.images.icons.gemini.path),
                          title: 'AI Pay',
                          content: e.Title ?? "",
                          time: e.createdAt ?? DateTime.now(),
                          voidCallback: () {
                            ChatAIRouteData(
                              $extra: e.roomId,
                              typeAI: TypeAI.gemini,
                            ).push(context);
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
