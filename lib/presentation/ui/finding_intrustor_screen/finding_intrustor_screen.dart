import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../application/services/education/education.dart';
import '../../bases/socket_cubit/socket_cubit.dart';
import '../../gen/app_colors.dart';
import '../../gen/assets.gen.dart';
import '../../shared/handlers/failure_handler/failure_handler_manager.dart';

import '../../shared/theme/theme.dart';
import '../../shared/widgets/buttons/common_button.dart';
import 'blocs/finding_intrustor_cubit.dart';

class FindingIntrustorScreen extends StatefulWidget {
  const FindingIntrustorScreen({
    super.key,
  });

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
            ),
        child: Builder(builder: (context) {
          context.read<FindingIntrustorCubit>();
          return Scaffold(
            body: Container(
              decoration: const BoxDecoration(color: AppColors.white),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Assets.svgs.finding.svg(height: 150, width: 150),
                  const SizedBox(height: 20),
                  Text(
                    "Hệ thống đang tìm kiếm người hướng dẫn phù hợp cho bạn",
                    style: Styles.s18().withWeight(FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  const SizedBox(
                    height: 20,
                    child: LinearProgressIndicator(
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Vui lòng một lát nhé",
                    style: Styles.s15().withWeight(FontWeight.w300),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  CommonButton(
                    onTap: () {
                      Navigator.pop(context, false);
                    },
                    padding: const EdgeInsets.all(15),
                    wrapContent: true,
                    backgroundColor: Colors.transparent,
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(8),
                    child: Text(
                      "Hủy tìm kiếm",
                      style: Styles.s16()
                          .withColor(Colors.blue)
                          .withWeight(FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
          );
        }));
  }
}
