import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:study_mentor_mobile/application/services/ai/dto/enum.dart';
import 'package:study_mentor_mobile/presentation/gen/assets.gen.dart';
import 'package:study_mentor_mobile/presentation/router/router_config/router_config.dart';

import '../../../gen/app_colors.dart';
import '../../../shared/theme/theme.dart';
import '../../../shared/widgets/buttons/common_button.dart';

class HomeMainContent extends StatelessWidget {
  const HomeMainContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 18, right: 18, top: 12, bottom: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _DirectionBanner(
            onTap: () {},
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: _EventItem(
                  title: 'Tất cả AI',
                  subTitle: 'Ai miễn phí',
                  icon: Assets.svgs.homeAiFree.svg(),
                  onTap: () {
                    // showDialog(
                    //     context: context,
                    //     builder: (context) => const _SelectAIDialog());

                    IntrustorAnswerRouteData(
                            questionId: "39caed83-d3da-4a30-bbbf-362379c59882")
                        .push(context);
                  },
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _EventItem(
                  title: 'AI hệ thống',
                  subTitle: 'Ai nâng cấp',
                  icon: Assets.svgs.homeAiFee.svg(),
                  onTap: () {
                    const ChatAIRouteData(typeAI: TypeAI.pay).push(context);
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: _EventItem(
                  title: 'Hỏi đáp qua File',
                  subTitle: 'Đội ngũ chuyên gia sẽ giúp bạn',
                  icon: Assets.svgs.homeMentorIcon.svg(),
                  onTap: () {
                    const CreateQuestionRouteData().push(context);
                  },
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _EventItem(
                  title: 'Google meet',
                  subTitle: 'Tìm kiếm người hướng dẫn qua google meet',
                  icon: Assets.svgs.homeGoogleMeet.svg(),
                  onTap: () {
                    const CreateGGMeetRouteData().push(context);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _DirectionBanner extends StatelessWidget {
  const _DirectionBanner({this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.blue.shade50,
          ),
          child: Container(
            padding:
                const EdgeInsets.only(right: 20, left: 16, top: 12, bottom: 7),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Xin chào các bạn',
                              style: Styles.s16()
                                  .withHeight(22 / 16)
                                  .withWeight(FontWeight.w600)
                                  .withLetterSpacing(-2.5 / 100)
                                  .withColor(AppColors.red.shade600),
                            ),
                            const SizedBox(height: 10),
                            CommonButton(
                              wrapContent: true,
                              borderRadius: BorderRadius.circular(16),
                              textStyle: Styles.s12()
                                  .withLetterSpacing(-2.5 / 100)
                                  .withColor(AppColors.gray.shade100),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 2, horizontal: 12),
                              child: const Text('Hãy khám phá'),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 12),
                    ],
                  ),
                ),
                Expanded(
                  child: FittedBox(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(width: 12),
                        Assets.svgs.homeDirectionBanner.svg(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(8),
              onTap: onTap,
            ),
          ),
        ),
      ],
    );
  }
}

class _EventItem extends StatelessWidget {
  const _EventItem({
    required this.title,
    required this.subTitle,
    required this.icon,
    this.onTap,
  });

  final String title;
  final String subTitle;
  final Widget icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 164 / 144,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppColors.blue.shade50,
            borderRadius: BorderRadius.circular(8)),
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            borderRadius: BorderRadius.circular(8),
            onTap: onTap,
            child: Padding(
              padding:
                  const EdgeInsets.only(right: 8, bottom: 8, top: 14, left: 16),
              child: Stack(
                children: [
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: icon,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        title,
                        minFontSize: 10,
                        style: Styles.s16()
                            .withHeight(22 / 16)
                            .withWeight(FontWeight.w600)
                            .withLetterSpacing(-2.5 / 100)
                            .withColor(AppColors.text.main),
                      ),
                      AutoSizeText(
                        subTitle,
                        minFontSize: 8,
                        style: Styles.s12()
                            .withHeight(16 / 12)
                            .withLetterSpacing(-2.5 / 100)
                            .withColor(AppColors.text.common),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _SelectAIDialog extends StatelessWidget {
  const _SelectAIDialog();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      child: Wrap(
        children: [
          Column(
            children: [
              _SelectAIItem(
                avatar: Assets.images.icons.chatgpt.path,
                title: "ChatGPT",
                content: "Lấy từ gpt-3.5-turbo",
                onTap: () {
                  const ChatAIRouteData(typeAI: TypeAI.chatgpt).push(context);
                  Navigator.pop(context);
                },
              ),
              const SizedBox(height: 20),
              _SelectAIItem(
                avatar: Assets.images.icons.gemini.path,
                title: "Gemini",
                content: "The multi-modal model from Google's Gemini family",
                onTap: () {
                  const ChatAIRouteData(typeAI: TypeAI.gemini).push(context);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _SelectAIItem extends StatelessWidget {
  const _SelectAIItem({
    required this.avatar,
    required this.title,
    required this.content,
    required this.onTap,
  });
  final String avatar;
  final String title;
  final String content;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Ink(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(avatar),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: Styles.s18().withWeight(FontWeight.bold),
                      ),
                      Text(
                        content,
                        style: Styles.s16().withWeight(FontWeight.w300),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
