import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.textColor,
    required this.buttonColor,
    required this.borderRadius,
  });
  final String text;
  final Color textColor;
  final Color buttonColor;
  final BorderRadiusGeometry borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        onPressed: () {},
        child: Center(
          child: Text(text, style: Styles.bookPrice.copyWith(color: textColor)),
        ),
      ),
    );
  }
}
