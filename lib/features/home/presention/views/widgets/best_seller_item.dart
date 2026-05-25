import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presention/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 3),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.15,
        child: GestureDetector(
          onTap: () {
            GoRouter.of(context).push('/bookDetailsView');
          },
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2 / 3,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(AssetsData.book1),
                    ),
                  ),
                ),
              ),

              SizedBox(width: 20),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        'The Jungle Book ',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.bookTitle,
                      ),
                    ),
                    SizedBox(height: 3),
                    Text('Mohamed Elgohary', style: Styles.bookPublisher),
                    SizedBox(height: 3),
                    BookRating(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
