import 'package:bookly_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookDeatilsAppbar extends StatelessWidget {
  const CustomBookDeatilsAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: Icon(Icons.clear, color: defaultColor, size: 28),
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_cart, color: defaultColor, size: 28),
        ),
      ],
    );
  }
}
