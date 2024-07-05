import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:study_mentor_mobile/presentation/gen/app_colors.dart';
import 'package:study_mentor_mobile/presentation/gen/assets.gen.dart';
import 'package:study_mentor_mobile/presentation/shared/theme/src/app_style.dart';
import 'package:study_mentor_mobile/presentation/ui/home_screen/widgets/home_main_content.dart';

import '../../shared/transitions/transitions.dart';
import '../../shared/widgets/app_bar/main_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CustomTransitionPage(
      child: const HomeScreen(),
      transitionsBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) {
        return CustomTransitionBuilder.noTransition(
          context,
          animation,
          secondaryAnimation,
          child,
        );
      },
    );
  }

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        currentMainTabIndex: 0,
        backgroundColor: AppColors.blue.shade50,
      ),
      body: const Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: HomeMainContent(),
            ),
          ),
          _HomeBottomBanner(),
        ],
      ),
    );
  }
}

class _HomeBottomBannerSingle extends StatelessWidget {
  const _HomeBottomBannerSingle();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // AppAmplitudeService.instance
        //     .bannerTap(userId: context.read<UserCubit>().state.idx);
        // const url = Constants.homeBannerUrl;
        // final uri = Uri.parse(url);
        // launchUrl(uri, mode: LaunchMode.externalApplication);
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: AspectRatio(
          aspectRatio: 375 / 80,
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Assets.images.homeBanner.homeBanner.image(),
          ),
        ),
      ),
    );
  }
}

class _HomeBottomBanner extends StatefulWidget {
  const _HomeBottomBanner();

  @override
  State<_HomeBottomBanner> createState() => _HomeBottomBannerState();
}

class _HomeBottomBannerState extends State<_HomeBottomBanner> {
  static const _autoPlayDuration = Duration(seconds: 5);
  static const _nextSlideDuration = Duration(milliseconds: 900);
  static const _nextSlideCurve = Curves.fastEaseInToSlowEaseOut;

  static final _carouselItems = [
    Assets.images.homeBanner.homeBanner.image(),
    Assets.images.homeBanner1.homeBanner1.image(),
  ];

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              autoPlayCurve: _nextSlideCurve,
              autoPlayInterval: _autoPlayDuration,
              autoPlayAnimationDuration: _nextSlideDuration,
              aspectRatio: 375 / 80,
              viewportFraction: 1,
              autoPlay: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentPage = index;
                });
              }),
          items: _carouselItems.map((item) {
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: item,
              ),
            );
          }).toList(),
        ),
        Positioned(
          top: 10,
          left: 18,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: AppColors.white.withOpacity(0.7),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              '${_currentPage + 1}/${_carouselItems.length}',
              style: Styles.s12()
                  .withHeight(16 / 12)
                  .withLetterSpacing(-2.5 / 100)
                  .withColor(AppColors.black),
            ),
          ),
        ),
      ],
    );
  }
}
