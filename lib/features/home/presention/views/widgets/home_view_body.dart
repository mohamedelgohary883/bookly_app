import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presention/views/widgets/books_list_view.dart';
import 'package:bookly_app/features/home/presention/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppbar(),
        BooksListView(),
        SizedBox(height: 50),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Text('Best Seller', style: Styles.title1),
        ),
      ],
    );
  }
}
