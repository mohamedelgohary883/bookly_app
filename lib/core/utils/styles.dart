import 'package:bookly_app/constant.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: defaultColor,
  );
  static const bookTitle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: defaultColor,
  );
  static const bookPublisher = TextStyle(
    color: Colors.grey,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  static const bookPrice = TextStyle(
    fontSize: 24,
    color: defaultColor,
    fontWeight: FontWeight.bold,
  );
}
