import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:study_mentor_mobile/presentation/gen/locale/app_localizations.dart';
import 'package:study_mentor_mobile/presentation/router/router_config/router_config.dart';
import '../../../../application/services/education/education.dart';
import '../../../bases/socket_cubit/socket_cubit.dart';
import '../../../gen/app_colors.dart';
import '../../../gen/assets.gen.dart';
import '../../../shared/handlers/failure_handler/failure_handler_manager.dart';

import '../../../shared/theme/theme.dart';
import '../../../shared/widgets/buttons/common_button.dart';
import 'blocs/finding_intrustor_cubit.dart';
import 'blocs/finding_intrustor_state.dart';

class FindingIntrustorScreen extends StatefulWidget {
  const FindingIntrustorScreen({super.key, required this.questionId});

  final String questionId;

  @override
  State<FindingIntrustorScreen> createState() => _FindingIntrustorScreenState();
}

class _FindingIntrustorScreenState extends State<FindingIntrustorScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<FindingIntrustorCubit>(
        create: (context) => FindingIntrustorCubit(
              failureHandlerManager: context.read<FailureHandlerManager>(),
              educationController: context.read<EducationController>(),
              socketCubit: context.read<SocketCubit>(),
              questionId: widget.questionId,
            ),
        child: Builder(builder: (context) {
          context.read<FindingIntrustorCubit>();
          return BlocListener<FindingIntrustorCubit, FindingIntrustorState>(
            listener: (context, state) {
              if (state.tutor != null) {
                context.pop(true);
              }
            },
            child: Scaffold(
              body: Container(
                decoration: const BoxDecoration(color: AppColors.white),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Assets.svgs.finding.svg(height: 150, width: 150),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        S.of(context).systemFindSuitableIntuctor,
                        style: Styles.s18().withWeight(FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      height: 20,
                      child: const LinearProgressIndicator(
                        color: Colors.blue,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      S.of(context).pleaseWait,
                      style: Styles.s15().withWeight(FontWeight.w300),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CommonButton(
                          onTap: () async {
                            if (await context
                                .read<FindingIntrustorCubit>()
                                .cancelFindSystemQuestion()) {
                              Navigator.pop(context, false);
                            }
                          },
                          padding: const EdgeInsets.all(15),
                          wrapContent: true,
                          backgroundColor: Colors.transparent,
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(8),
                          child: Text(
                            S.of(context).cancelFind,
                            style: Styles.s16()
                                .withColor(Colors.blue)
                                .withWeight(FontWeight.w600),
                          ),
                        ),
                        CommonButton(
                          onTap: () {
                            const HomeRouteData().go(context);
                          },
                          padding: const EdgeInsets.all(15),
                          wrapContent: true,
                          backgroundColor: Colors.transparent,
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(8),
                          child: Text(
                            S.of(context).goHomePage,
                            style: Styles.s16()
                                .withColor(Colors.blue)
                                .withWeight(FontWeight.w600),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        }));
  }
}
