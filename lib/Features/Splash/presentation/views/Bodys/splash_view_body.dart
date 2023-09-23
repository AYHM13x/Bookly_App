import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../../constents.dart';
import '../../../../home/home_view.dart';
import '../widgets/animated_text_in_splash_view_body.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingUpAnimation;

  @override
  void initState() {
    super.initState();

    initSildingText();

    navigateToHomeView();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("width: ${MediaQuery.of(context).size.width}");
    debugPrint("height: ${MediaQuery.of(context).size.height}");
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 4,
        ),
        AnimatedTextInSplashViewBody(slidingUpAnimation: slidingUpAnimation),
      ],
    );
  }

  void initSildingText() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );

    slidingUpAnimation =
        Tween<Offset>(begin: const Offset(0, 20), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
    // slidingUpAnimation.addListener(() {
    //   setState(() {});
    // });
  }

  void navigateToHomeView() {
    Future.delayed(kDelayedDuration, () {
      Get.to(() => const HomeView(),
          transition: Transition.fadeIn, duration: kTransitionDuration);
    });
  }
}
