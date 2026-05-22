import 'package:flutter/material.dart';

class TextSlideAnimation extends StatelessWidget {
  const TextSlideAnimation({super.key, required this.slideAnimation});

  final Animation<Offset> slideAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slideAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slideAnimation,
          child: Text(
            'Read free books',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight(500),
              fontStyle: FontStyle.italic,
              fontSize: 18,
            ),
          ),
        );
      },
    );
  }
}
