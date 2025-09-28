import 'package:flutter/material.dart';

import 'custom_book_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 4, left: 4, top: 4),
            child: CustomBookItem(
              imageUrl:
                  'https://www.surfer.com/.image/t_share/MTk2Mjc2ODA4ODk3ODY1MjQz/oct_cover_guesser.jpg',
            ),
          );
        },
      ),
    );
  }
}
