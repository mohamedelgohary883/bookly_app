import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/splash/presentaion/views/widget/text_slide_animation.dart';
import 'package:flutter/material.dart';

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
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    slideAnimation = Tween<Offset>(begin: Offset(0, 2), end: Offset.zero)
        .animate(
          CurvedAnimation(parent: animationController, curve: Curves.easeOut),
        );
    animationController.forward();
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
}
