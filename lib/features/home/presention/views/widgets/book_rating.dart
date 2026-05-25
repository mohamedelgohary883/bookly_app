import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(Icons.star, color: Colors.yellow),
        SizedBox(width: 4),
        Text('4.8', style: Styles.textStyle18),
        SizedBox(width: 4),
        Text('(2300)', style: Styles.textStyle18.copyWith(color: Colors.grey)),
      ],
    );
  }
}
