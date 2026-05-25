import 'package:bookly_app/constant.dart';
import 'package:bookly_app/features/home/presention/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomButton(
              text: '19.99\$',
              buttonColor: defaultColor,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              text: 'Free preview',
              buttonColor: Colors.deepOrangeAccent,
              textColor: defaultColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
