import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../../application/services/app/app_config/app_config.dart';
import '../../../application/services/user/response/response.dart';
import '../../bases/file_cubit/file_cubit.dart';
import '../../bases/socket_cubit/socket_cubit.dart';
import '../../bases/user_cubit/user_cubit.dart';
import '../../gen/app_colors.dart';
import '../../gen/assets.gen.dart';
import '../../router/router_config/routes_gen/routes_gen.dart';
import '../../shared/handlers/failure_handler/failure_handler_manager.dart';
import '../../shared/theme/theme.dart';
import '../../shared/widgets/app_bar/common_app_bar.dart';
import '../../shared/widgets/app_icon_button.dart';
import '../../shared/widgets/chat_item.dart';
import '../../shared/widgets/textfields/common_textfield.dart';
import 'blocs/chat_intrustor_cubit.dart';
import 'blocs/chat_intrustor_state.dart';

class ChatIntrustorScreen extends StatefulWidget {
  const ChatIntrustorScreen(
      {super.key, required this.roomId, required this.intrustor});
  final String roomId;
  final UserInfoResponse intrustor;

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
          fileCubit: context.read<FileCubit>(),
          userId: context.read<UserCubit>().state.detail?.id ?? "",
          intrustor: widget.intrustor,
          roomId: widget.roomId,
          controller: scrollController,
        );
      },
      child: Builder(
        builder: (context) {
          context.read<ChatIntrustorCubit>();
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
                            "${context.read<AppConfig>().imagePath}/${widget.intrustor.avatar?.fileKey ?? ""}",
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
                            files: e.files,
                            content: e.content ?? "",
                            dateTime: e.createdAt ?? DateTime.now(),
                            isOpposite: e.senderId !=
                                context.read<ChatIntrustorCubit>().userId,
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
                                                    .read<ChatIntrustorCubit>()
                                                    .removeImgPicker(state
                                                        .listIMGPicker[index]);
                                              }
                                              if (index >=
                                                  state.listIMGPicker.length) {
                                                context
                                                    .read<ChatIntrustorCubit>()
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
                                          .read<ChatIntrustorCubit>()
                                          .addImgPicker([file]);
                                    }

                                    if (file.runtimeType == List<XFile>) {
                                      context
                                          .read<ChatIntrustorCubit>()
                                          .addImgPicker(file);
                                    }

                                    if (file.runtimeType == FilePickerResult) {
                                      context
                                          .read<ChatIntrustorCubit>()
                                          .addFilePicker(file);
                                    }
                                  },
                                ),
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
                                        context
                                            .read<ChatIntrustorCubit>()
                                            .sendMessage();
                                        messageController.clear();
                                        context
                                            .read<ChatIntrustorCubit>()
                                            .onChangedMessage("");
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
