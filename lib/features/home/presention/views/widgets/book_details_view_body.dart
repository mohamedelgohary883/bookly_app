import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presention/views/widgets/book_action.dart';
import 'package:bookly_app/features/home/presention/views/widgets/books_list_view.dart';
import 'package:bookly_app/features/home/presention/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presention/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presention/views/widgets/custom_book_details_appbar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                CustomBookDeatilsAppbar(),
                SizedBox(height: 30),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.31,
                  child: CustomBookImage(),
                ),
                SizedBox(height: 25),
                Text('The jungel Book', style: Styles.bookTitle),
                SizedBox(height: 5),
                Text('Mohamed Elgohary', style: Styles.bookPublisher),
                SizedBox(height: 10),
                BookRating(mainAxisAlignment: MainAxisAlignment.center),
                SizedBox(height: 40),
                BookAction(),
                Expanded(child: SizedBox()),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      'You can also like',
                      style: Styles.textStyle18.copyWith(
                        fontSize: 16,
                        fontFamily: 'reglar',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                BooksListView(
                  height: MediaQuery.of(context).size.height * 0.17,
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
