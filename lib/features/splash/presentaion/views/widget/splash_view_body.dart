import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/home/presention/views/home_view.dart';
import 'package:bookly_app/features/splash/presentaion/views/widget/text_slide_animation.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slideAnimation;
  @override
  void initState() {
    super.initState();
    slidingAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();

    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 300,
            child: Image.asset(
              AssetsData.logo,
              fit: BoxFit.fitWidth,
              filterQuality: FilterQuality.high,
            ),
          ),
        ),
        SizedBox(height: 8),
        TextSlideAnimation(slideAnimation: slideAnimation),
      ],
    );
  }

  void slidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    animationController.forward();
    slideAnimation = Tween<Offset>(begin: Offset(0, 2), end: Offset.zero)
        .animate(
          CurvedAnimation(parent: animationController, curve: Curves.easeOut),
        );
  }

  void navigateToHome() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(
        HomeView(),
        transition: Transition.fadeIn,
        duration: Duration(seconds: 1),
      );
    });
  }
}
