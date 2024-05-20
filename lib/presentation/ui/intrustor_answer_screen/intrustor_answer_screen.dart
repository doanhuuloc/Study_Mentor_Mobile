import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_mentor_mobile/application/services/socket/dto/dto.dart';
import 'package:study_mentor_mobile/presentation/router/router_config/router_config.dart';

import '../../../application/services/education/education.dart';
import '../../bases/socket_cubit/socket_cubit.dart';
import '../../gen/app_colors.dart';
import '../../gen/assets.gen.dart';
import '../../shared/handlers/failure_handler/failure_handler_manager.dart';

import '../../shared/widgets/app_bar/common_app_bar.dart';
import '../../shared/widgets/buttons/common_button.dart';
import '../../shared/widgets/gap_items.dart';
import 'blocs/intrustor_answer_cubit.dart';
import 'widgets/answer_info_box.dart';
import 'widgets/intrustor_item.dart';
import 'widgets/question_info_box.dart';
import 'widgets/question_summary.dart';

class IntrustorAnswerScreen extends StatefulWidget {
  const IntrustorAnswerScreen({
    super.key,
  });

  @override
  State<IntrustorAnswerScreen> createState() => _IntrustorAnswerScreenState();
}

class _IntrustorAnswerScreenState extends State<IntrustorAnswerScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<IntrustorAnswerCubit>(
        create: (context) => IntrustorAnswerCubit(
              failureHandlerManager: context.read<FailureHandlerManager>(),
              educationController: context.read<EducationController>(),
              socketCubit: context.read<SocketCubit>(),
            ),
        child: Builder(builder: (context) {
          context.read<IntrustorAnswerCubit>();
          return Scaffold(
            appBar: CommonAppBar(
              title: const Text("Câu trả lời"),
              color: AppColors.blue.shade50,
            ),
            floatingActionButton: Padding(
              padding: const EdgeInsets.only(bottom: 20, right: 10),
              child: Material(
                color: Colors.transparent,
                type: MaterialType.transparency,
                child: InkWell(
                  borderRadius: BorderRadius.circular(1000),
                  child: Ink(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: AppColors.blue.shade50, shape: BoxShape.circle),
                    child: Assets.svgs.chat.svg(
                      color: Colors.blue,
                      height: 30,
                      width: 30,
                    ),
                  ),
                  onTap: () {
                    ChatIntrustorRouteData(
                      $extra: ChatIntrustorExtraData(
                        roomId:
                            context.read<IntrustorAnswerCubit>().state.roomId ??
                                "",
                        intrustor:
                            // context.read<IntrustorAnswerCubit>().state.tutor ??
                                const Tutor(id: "33eb37d4-85d7-4422-b065-9d369046e0e2"),
                      ),
                    ).push(context);
                  },
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: GapItems(
                gap: 15,
                items: [
                  IntrustorItem(
                    name: "Long Vu",
                    numberOfStar: 5,
                    voidCallback: () {},
                  ),
                  const QuestionSummary(),
                  const QuestionInfoBox(),
                  const AnswerInfoBox(),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 20, right: 50, left: 50),
                    child: CommonButton(
                      padding: const EdgeInsets.all(10),
                      child: const Text("Hoàn thành"),
                      onTap: () {},
                    ),
                  )
                ],
              ),
            ),
          );
        }));
  }
}
