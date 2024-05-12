import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:study_mentor_mobile/application/services/app/app_config/app_config.dart';

import '../../../application/services/ai/ai.dart';
import '../../bases/user_cubit/user_cubit.dart';
import '../../gen/app_colors.dart';
import '../../gen/assets.gen.dart';
import '../../shared/handlers/failure_handler/failure_handler_manager.dart';
import '../../shared/widgets/app_bar/common_app_bar.dart';
import '../../shared/widgets/textfields/common_textfield.dart';
import 'blocs/chat_cubit.dart';
import 'blocs/chat_state.dart';
import 'widgets/chatItem.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key, this.roomId});
  final String? roomId;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChatCubit>(
      create: (context) {
        return ChatCubit(
          aiController: context.read<AIController>(),
          failureHandlerManager: context.read<FailureHandlerManager>(),
          userId: context.read<UserCubit>().state.detail?.id ?? "",
          idChatAI: context.read<AppConfig>().chatGpt,
          roomId: widget.roomId,
        );
      },
      child: Builder(builder: (context) {
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
                      image: AssetImage(Assets.images.icons.chatgpt.path),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Text("Chat GPT"),
              ],
            ),
            color: AppColors.blue.shade50,
          ),
          body: BlocBuilder<ChatCubit, ChatState>(
            buildWhen: (previous, current) =>
                previous.listChat != current.listChat,
            builder: (context, state) {
              return Column(
                children: [
                  Expanded(
                      child: ListView(
                    padding: const EdgeInsets.all(10),
                    reverse: true,
                    children: context.read<ChatCubit>().state.listChat.map((e) {
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
                            onChanged: (value) {
                              context.read<ChatCubit>().onChangedMessage(value);
                            },
                            textInputAction: TextInputAction.newline,
                            minLines: 1,
                            maxLines: null,
                          ),
                        ),
                        GestureDetector(
                            onTap: () =>
                                context.read<ChatCubit>().sendMessageWithAI(),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.send,
                                color: AppColors.blue,
                              ),
                            )),
                      ],
                    ),
                  )
                ],
              );
            },
          ),
        );
      }),
    );
  }
}
