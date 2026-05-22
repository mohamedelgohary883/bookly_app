import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class ContainerListViewItem extends StatelessWidget {
  const ContainerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.3 / 3,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsData.book1),
          ),
        ),
      ),
    );
  }
}
