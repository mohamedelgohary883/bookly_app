import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 3),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.15,
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
                  Row(
                    children: [
                      Text('19.99\$', style: Styles.bookPrice),
                      Spacer(),
                      Icon(Icons.star, color: Colors.yellow),
                      SizedBox(width: 4),
                      Text('4.8', style: Styles.textStyle18),
                      SizedBox(width: 4),
                      Text(
                        '(2300)',
                        style: Styles.textStyle18.copyWith(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
