import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

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
        Text(
          'Read free books',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight(500),
            fontStyle: FontStyle.italic,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
