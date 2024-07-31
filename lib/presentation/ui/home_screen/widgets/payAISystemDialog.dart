import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_mentor_mobile/presentation/shared/handlers/failure_handler/failure_handler_manager.dart';
import 'package:study_mentor_mobile/presentation/shared/handlers/loading_handler/loading_manager.dart';
import 'package:study_mentor_mobile/presentation/utilities/formatCurency.dart';
import 'package:study_mentor_mobile/utilities/launch_url.dart';

import '../../../../application/services/education/education.dart';
import '../../../gen/app_colors.dart';
import '../../../shared/theme/theme.dart';
import '../../../shared/widgets/buttons/common_button.dart';

class PayAISystemDialog extends StatefulWidget {
  const PayAISystemDialog({super.key});

  @override
  State<PayAISystemDialog> createState() => _PayAISystemDialogState();
}

class _PayAISystemDialogState extends State<PayAISystemDialog> {
  ExpirationDateType? type;

  void changeExpirationDateType(ExpirationDateType value) {
    setState(() {
      type = value;
    });
  }

  Future<void> pay() async {
    // context.read<UserCubit>().setMemberShip();
    final futureRes = context.read<EducationController>().payment(
        paymentLinkRequest:
            PaymentLinkRequest(type: 1, expirationDateType: type));

    final res =
        await context.read<LoadingManager>().startLoading(future: futureRes);

    if (!context.mounted) {
      return;
    }
    if (res.isLeft) {
      context.read<FailureHandlerManager>().handle(res.left);
    }

    if (res.isRight) {
      try {
        appLaunchUrl(res.right.data.checkoutUrl!, context);
      } catch (e) {}
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      child: Wrap(
        children: [
          Ink(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Text(
                  "Gói sử dụng AI hệ thống",
                  style: Styles.s20().withWeight(FontWeight.w600),
                ),
                _PayAIItem(
                  title: "Gói ngày (1 ngày)",
                  content: Text(
                    formatCurrency(15000, context),
                    style: Styles.s18(),
                  ),
                  onTap: () => changeExpirationDateType(ExpirationDateType.DAY),
                  selected: type == ExpirationDateType.DAY,
                ),
                _PayAIItem(
                  title: "Gói tuần (7 ngày)",
                  content: Text(
                    formatCurrency(105000, context),
                    style: Styles.s18(),
                  ),
                  onTap: () =>
                      changeExpirationDateType(ExpirationDateType.WEEK),
                  selected: type == ExpirationDateType.WEEK,
                ),
                _PayAIItem(
                  title: "Gói tháng (30 ngày)",
                  content: Text(
                    formatCurrency(225000, context),
                    style: Styles.s18(),
                  ),
                  onTap: () =>
                      changeExpirationDateType(ExpirationDateType.MONTH),
                  selected: type == ExpirationDateType.MONTH,
                ),
                _PayAIItem(
                  title: "Gói năm (365 ngày)",
                  content: Text(
                    formatCurrency(2500000, context),
                    style: Styles.s18(),
                  ),
                  onTap: () =>
                      changeExpirationDateType(ExpirationDateType.YEAR),
                  selected: type == ExpirationDateType.YEAR,
                ),
                const SizedBox(height: 10),
                CommonButton(
                  backgroundColor: type != null
                      ? AppColors.blue.shade500
                      : AppColors.gray.shade200,
                  onTap: type != null ? () async => await pay() : null,
                  child: Text(
                    "Thanh Toán",
                    style: Styles.s18().withColor(type != null
                        ? AppColors.gray.shade70
                        : AppColors.text.caption),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _PayAIItem extends StatelessWidget {
  const _PayAIItem({
    required this.title,
    required this.content,
    required this.onTap,
    this.selected = false,
  });
  final String title;
  final Widget content;
  final VoidCallback onTap;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Ink(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: selected ? Colors.blue : Colors.grey),
        ),
        child: InkWell(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Material(
                    color: Colors.transparent,
                    type: MaterialType.transparency,
                    child: InkWell(
                      splashColor: Colors.blue.shade400,
                      borderRadius: BorderRadius.circular(1000),
                      onTap: onTap,
                      child: Ink(
                          height: 30,
                          width: 30,
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.blue),
                          child: Ink(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: Ink(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: selected ? Colors.blue : Colors.white),
                            ),
                          )),
                    ),
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: Styles.s16(),
                      ),
                      content
                    ],
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
