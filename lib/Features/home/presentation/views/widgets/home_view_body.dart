import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      CustomAppBar(),
      FeaturedBooksListView(),
      SizedBox(
        height: 40,
      ),
      Text(
        'Best Seller',
      style: Styles.titleMedium,
      )
    ]);
  }
}
