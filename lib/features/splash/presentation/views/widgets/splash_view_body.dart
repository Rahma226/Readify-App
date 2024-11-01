import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:readify/constants.dart';
import 'package:readify/core/utils/app_router.dart';
import 'package:readify/core/utils/assests.dart';

class SplashViewbody extends StatefulWidget {
  const SplashViewbody({Key? key}) : super(key: key);

  @override
  State<SplashViewbody> createState() => _SplashViewbodyState();
}

class _SplashViewbodyState extends State<SplashViewbody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(
        const Duration(seconds: 2),
        () {
          // Get.off(() => const HomeView(),
          //     transition: Transition.fade,
          //     duration: const Duration(milliseconds: 250));
          GoRouter.of(context).push(AppRouter.KhomeView);
        },
      );
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          Asset.logo,
          height: 120,
          width: 120,
        ),
        const SizedBox(height: 1),
        AnimatedBuilder(
          animation: slidingAnimation,
          builder: (context, _) {
            return SlideTransition(
              position: slidingAnimation,
              child: const Column(
                children: [
                  Text(
                    'READFIY',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: KsecondryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                  Text(
                    'Books Lovers Club',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xffFEEAD7),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            );
          },
        )
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
  }
}
