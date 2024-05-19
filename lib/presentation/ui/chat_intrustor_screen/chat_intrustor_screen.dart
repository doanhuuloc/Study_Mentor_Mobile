import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_mentor_mobile/application/services/socket/dto/dto.dart';
import 'package:study_mentor_mobile/presentation/router/router_config/router_config.dart';
import 'package:study_mentor_mobile/presentation/shared/theme/src/app_style.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/app_icon_button.dart';

import '../../bases/socket_cubit/socket_cubit.dart';
import '../../bases/user_cubit/user_cubit.dart';
import '../../gen/app_colors.dart';
import '../../gen/assets.gen.dart';
import '../../shared/handlers/failure_handler/failure_handler_manager.dart';
import '../../shared/widgets/app_bar/common_app_bar.dart';
import '../../shared/widgets/textfields/common_textfield.dart';
import 'blocs/chat_intrustor_cubit.dart';
import 'blocs/chat_intrustor_state.dart';
import 'widgets/chatItem.dart';

class ChatIntrustorScreen extends StatefulWidget {
  const ChatIntrustorScreen(
      {super.key, required this.roomId, required this.intrustor});
  final String roomId;
  final Tutor intrustor;

  @override
  State<ChatIntrustorScreen> createState() => _ChatIntrustorScreenState();
}

class _ChatIntrustorScreenState extends State<ChatIntrustorScreen> {
  final scrollController = ScrollController();
  final messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChatIntrustorCubit>(
      create: (context) {
        return ChatIntrustorCubit(
          failureHandlerManager: context.read<FailureHandlerManager>(),
          socketCubit: context.read<SocketCubit>(),
          userId: context.read<UserCubit>().state.detail?.id ?? "",
          intrustor: widget.intrustor,
          roomId: widget.roomId,
          controller: scrollController,
        );
      },
      child: Builder(
        builder: (context) {
          return Scaffold(
              appBar: CommonAppBar(
                title: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://storage.googleapis.com/study-mentor/${widget.intrustor.avatar ?? ""}",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      widget.intrustor.fullName ?? "",
                      style: Styles.s18().withWeight(FontWeight.w600),
                    ),
                  ],
                ),
                color: AppColors.blue.shade50,
                actions: [
                  AppIconButton(
                    icon: Assets.svgs.tabBarCommunity.svg(
                      height: 30,
                      width: 30,
                      color: AppColors.black,
                    ),
                    onTap: () => const HistoryRouteData().go(context),
                  )
                ],
              ),
              body: BlocConsumer<ChatIntrustorCubit, ChatIntrustorState>(
                listener: (context, state) {
                  scrollController
                      .jumpTo(scrollController.position.maxScrollExtent);
                },
                builder: (context, state) {
                  return Column(
                    children: [
                      Expanded(
                          child: ListView(
                        controller: scrollController,
                        padding: const EdgeInsets.all(10),
                        children: context
                            .read<ChatIntrustorCubit>()
                            .state
                            .listChat
                            .map((e) {
                          return ChatItem(
                            content: e.value ?? "",
                            dateTime: e.createAt ?? DateTime.now(),
                            isOpposite: e.senderId !=
                                context.read<UserCubit>().state.detail?.id,
                          );
                        }).toList(),
                      )),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Expanded(
                              child: CommonTextField(
                                textEditingController: messageController,
                                onChanged: (value) {
                                  context
                                      .read<ChatIntrustorCubit>()
                                      .onChangedMessage(value);
                                },
                                textInputAction: TextInputAction.newline,
                                minLines: 1,
                                maxLines: null,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: AppIconButton(
                                  icon: const Icon(
                                    Icons.send,
                                    color: AppColors.blue,
                                  ),
                                  onTap: () async {
                                    messageController.clear();
                                  }),
                            ),
                          ],
                        ),
                      )
                    ],
                  );
                },
              ));
        },
      ),
    );
  }
}
