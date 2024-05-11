import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
    return const Scaffold();
  }
}
