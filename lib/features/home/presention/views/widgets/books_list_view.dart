import 'package:bookly_app/features/home/presention/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key, this.height});
  final double? height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CustomBookImage();
        },
      ),
    );
  }
}
