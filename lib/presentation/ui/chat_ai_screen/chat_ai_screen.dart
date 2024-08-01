import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:study_mentor_mobile/application/services/ai/dto/enum.dart';
import 'package:study_mentor_mobile/application/services/app/app_config/app_config.dart';
import 'package:study_mentor_mobile/presentation/bases/file_cubit/file_cubit.dart';
import 'package:study_mentor_mobile/presentation/router/router_config/router_config.dart';
import 'package:study_mentor_mobile/presentation/shared/theme/src/app_style.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/app_icon_button.dart';

import '../../../application/services/ai/ai.dart';
import '../../bases/user_cubit/user_cubit.dart';
import '../../gen/app_colors.dart';
import '../../gen/assets.gen.dart';
import '../../shared/handlers/failure_handler/failure_handler_manager.dart';
import '../../shared/widgets/app_bar/common_app_bar.dart';
import '../../shared/widgets/chat_item.dart';
import '../../shared/widgets/textfields/common_textfield.dart';
import 'blocs/chat_ai_cubit.dart';
import 'blocs/chat_ai_state.dart';

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
          fileCubit: context.read<FileCubit>(),
          typeAI: widget.typeAI,
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
                            files: e.files,
                          );
                        }).toList(),
                      )),
                      Container(
                        decoration:
                            BoxDecoration(color: AppColors.blue.shade200),
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            if (state.listIMGPicker.length +
                                    state.listFilePicker.length !=
                                0)
                              SizedBox(
                                height: 80,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: state.listIMGPicker.length +
                                      state.listFilePicker.length,
                                  itemBuilder: (context, index) => Stack(
                                    children: [
                                      if (index < state.listIMGPicker.length)
                                        Container(
                                          margin: const EdgeInsets.all(10),
                                          width: 60,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: FileImage(File(state
                                                      .listIMGPicker[index]
                                                      .path)))),
                                        ),
                                      if (index >= state.listIMGPicker.length)
                                        Container(
                                          margin: const EdgeInsets.all(10),
                                          width: 60,
                                          child:
                                              Assets.svgs.file.svg(width: 60),
                                        ),
                                      Positioned(
                                        top: 0,
                                        right: 0,
                                        child: Material(
                                          color: Colors.white,
                                          type: MaterialType.transparency,
                                          child: InkWell(
                                            onTap: () {
                                              if (index <
                                                  state.listIMGPicker.length) {
                                                context
                                                    .read<ChatAICubit>()
                                                    .removeImgPicker(state
                                                        .listIMGPicker[index]);
                                              }
                                              if (index >=
                                                  state.listIMGPicker.length) {
                                                context
                                                    .read<ChatAICubit>()
                                                    .removeFilePicker(state
                                                        .listFilePicker[index]);
                                              }
                                            },
                                            splashColor: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(1000),
                                            child: Ink(
                                                decoration: const BoxDecoration(
                                                    color: AppColors.white,
                                                    shape: BoxShape.circle),
                                                child: const Icon(
                                                  Icons.cancel_sharp,
                                                  color: AppColors.red,
                                                )),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            Row(
                              children: [
                                if (widget.typeAI == TypeAI.pay)
                                  AppIconButton(
                                    icon: Assets.svgs.uploadIcon.svg(),
                                    onTap: () async {
                                      final file =
                                          await const FilePickerRouteData()
                                              .push(context);

                                      if (!context.mounted) {
                                        return;
                                      }

                                      if (file.runtimeType == XFile) {
                                        context
                                            .read<ChatAICubit>()
                                            .addImgPicker([file]);
                                      }

                                      if (file.runtimeType == List<XFile>) {
                                        context
                                            .read<ChatAICubit>()
                                            .addImgPicker(file);
                                      }

                                      if (file.runtimeType ==
                                          FilePickerResult) {
                                        context
                                            .read<ChatAICubit>()
                                            .addFilePicker(file);
                                      }
                                    },
                                  ),
                                Expanded(
                                  child: CommonTextField(
                                    textEditingController: messageController,
                                    onChanged: (value) {
                                      context
                                          .read<ChatAICubit>()
                                          .onChangedMessage(value);
                                    },
                                    borderColor: Colors.black,
                                  
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
                                        if (state.roomId == null) {
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
