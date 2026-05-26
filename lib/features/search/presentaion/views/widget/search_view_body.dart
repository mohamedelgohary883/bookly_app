import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presention/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/search/presentaion/views/widget/custom_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              SizedBox(height: 20),
              CustomTextField(),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 10,
                  ),
                  child: Text('result', style: Styles.textStyle18),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        BestSellerListView(),
      ],
    );
  }
}
