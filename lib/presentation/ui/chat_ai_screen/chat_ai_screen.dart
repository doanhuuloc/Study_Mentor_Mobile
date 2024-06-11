import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:study_mentor_mobile/application/services/ai/dto/enum.dart';
import 'package:study_mentor_mobile/application/services/app/app_config/app_config.dart';
import 'package:study_mentor_mobile/presentation/router/router_config/router_config.dart';
import 'package:study_mentor_mobile/presentation/shared/theme/src/app_style.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/app_icon_button.dart';

import '../../../application/services/ai/ai.dart';
import '../../bases/user_cubit/user_cubit.dart';
import '../../gen/app_colors.dart';
import '../../gen/assets.gen.dart';
import '../../shared/handlers/failure_handler/failure_handler_manager.dart';
import '../../shared/widgets/app_bar/common_app_bar.dart';
import '../../shared/widgets/textfields/common_textfield.dart';
import 'blocs/chat_ai_cubit.dart';
import 'blocs/chat_ai_state.dart';
import 'widgets/chatItem.dart';

class ChatAIScreen extends StatefulWidget {
  const ChatAIScreen({super.key, this.roomId, required this.typeAI});
  final String? roomId;
  final TypeAI typeAI;

  @override
  State<ChatAIScreen> createState() => _ChatAIScreenState();
}

class _ChatAIScreenState extends State<ChatAIScreen> {
  late final String idChatAI;
  late final String avatar;
  late final String title;
  final scrollController = ScrollController();
  final messageController = TextEditingController();

  @override
  void initState() {
    switch (widget.typeAI) {
      case TypeAI.chatgpt:
        idChatAI = context.read<AppConfig>().chatGpt;
        avatar = Assets.images.icons.chatgpt.path;
        title = "ChatGPT";
        break;
      case TypeAI.gemini:
        idChatAI = context.read<AppConfig>().chatGemini;
        avatar = Assets.images.icons.gemini.path;
        title = "Gemini";

        break;
      case TypeAI.pay:
        idChatAI = context.read<AppConfig>().chatPay;
        avatar = "";
        title = "AI Pay";
        break;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChatAICubit>(
      create: (context) {
        return ChatAICubit(
          aiController: context.read<AIController>(),
          failureHandlerManager: context.read<FailureHandlerManager>(),
          userId: context.read<UserCubit>().state.detail?.id ?? "",
          idChatAI: idChatAI,
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
                    avatar == ""
                        ? Assets.svgs.homeAiFee.svg()
                        : Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                  avatar,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                    const SizedBox(width: 10),
                    Text(
                      title,
                      style: Styles.s18().withWeight(FontWeight.w600),
                    ),
                  ],
                ),
                color: AppColors.blue.shade50,
                actions: [
                  AppIconButton(
                    icon: SvgPicture.asset(
                      Assets.svgs.tabBarCommunity.path,
                      height: 30,
                      width: 30,
                      color: AppColors.black,
                    ),
                    onTap: () => const HistoryRouteData().go(context),
                  )
                ],
              ),
              body: BlocConsumer<ChatAICubit, ChatAIState>(
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
                        children:
                            context.read<ChatAICubit>().state.listChat.map((e) {
                          return ChatItem(
                            content: e.content ?? "",
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
                                      .read<ChatAICubit>()
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
                                    if (widget.roomId == null) {
                                      await context
                                          .read<ChatAICubit>()
                                          .createRoomChat();
                                    }
                                    context
                                        .read<ChatAICubit>()
                                        .sendMessageWithAI();
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
