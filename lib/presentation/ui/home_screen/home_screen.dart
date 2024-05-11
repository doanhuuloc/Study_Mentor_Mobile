import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:study_mentor_mobile/presentation/ui/home_screen/widgets/section.dart';

import '../../shared/transitions/transitions.dart';

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
    // return BlocProvider<HomeCubit>(
    //   lazy: false,
    //   create: (context) {
    //     return HomeCubit(
    //       mainPageController: context.read<MainPageController>(),
    //     );
    //   },
    //   child: BlocBuilder<HomeCubit, HomeState>(
    //     builder: (context, state) {
    //       return Scaffold(
    //         backgroundColor: AppColors.blue.shade600,
    //         appBar: MainAppBar(
    //           onLogoTap: () {
    //             const HomeRouteData().go(context);
    //           },
    //         ),
    //         body: RefreshIndicator(
    //           onRefresh: () async {
    //             context.read<HomeCubit>().reload();
    //           },
    //           child: SingleChildScrollView(
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 const CelebsSection(),
    //                 Container(
    //                   height: 40,
    //                   width: double.infinity,
    //                   decoration: BoxDecoration(
    //                     color: AppColors.blue.shade600,
    //                     border: Border.all(
    //                       color: AppColors.blue.shade600,
    //                       width: 0,
    //                     ),
    //                   ),
    //                 ),
    //                 ColoredBox(
    //                   color: AppColors.gray.shade70,
    //                   child: const Column(
    //                     children: [
    //                       BestContentsSection(),
    //                       SizedBox(height: 57),
    //                       OnlineMagazineSection(),
    //                       SizedBox(height: 57),
    //                       BestReviewsSection(),
    //                       SizedBox(height: 57),
    //                       SungongMuseumSection(),
    //                       SizedBox(height: 26),
    //                     ],
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //       );
    //     },
    //   ),
    // );
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 40,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(8)),
            ),
            Container(
              height: 80,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(8)),
            ),
            SizedBox(
              height: 500,
              child: GridView.count(
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                crossAxisCount: 2,
                children: [
                //  Section(),
                //  Section(),
                //  Section(),
                //  Section(),
                 
                ],
              ),
            )
          ],
        ),
      ),
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
            color: Colors.amber,
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
                      // AutoSizeText(
                      //   title,
                      //   minFontSize: 10,
                      //   style: Styles.s16()
                      //       .withHeight(22 / 16)
                      //       .withWeight(FontWeight.w600)
                      //       .withLetterSpacing(-2.5 / 100)
                      //       .withColor(AppColors.text.main),
                      // ),
                      // AutoSizeText(
                      //   subTitle,
                      //   minFontSize: 8,
                      //   style: Styles.s12()
                      //       .withHeight(16 / 12)
                      //       .withLetterSpacing(-2.5 / 100)
                      //       .withColor(AppColors.text.common),
                      // ),
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