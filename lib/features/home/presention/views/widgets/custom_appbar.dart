import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 20, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AssetsData.logo),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push('/searchView');
            },
            icon: Icon(Icons.search, size: 28, color: defaultColor),
          ),
        ],
      ),
    );
  }
}
