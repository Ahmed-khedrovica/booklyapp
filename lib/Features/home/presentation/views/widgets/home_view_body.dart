import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CustomAppBar(),
              FeaturedBooksListView(),
              SizedBox(height: 40),
              Text('Best Seller', style: Styles.textStyle18),
              SizedBox(height: 20),
            ],
          ),
        ),

        SliverFillRemaining(
          child: SizedBox(
              child: BestSellerListView()),
        )
      ],
    );
  }
}


