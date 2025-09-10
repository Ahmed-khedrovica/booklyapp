import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
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
    );
  }
}
