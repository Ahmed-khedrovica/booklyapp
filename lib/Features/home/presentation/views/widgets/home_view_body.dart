import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
      CustomAppBar(),
      FeaturedBooksListView(),
      SizedBox(
        height: 40,
      ),
      Text(
        'Best Seller',
      style: Styles.textStyle18,
      ),
          BestSellerListViewItem(),
    ]);
  }
}


class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    'https://www.surfer.com/.image/t_share/MTk2Mjc2ODA4ODk3ODY1MjQz/oct_cover_guesser.jpg',
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
