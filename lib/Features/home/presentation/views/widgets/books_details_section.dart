import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_action.dart';
import 'book_rating.dart';
import 'custom_book_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: const CustomBookItem(
            imageUrl:
                'https://www.surfer.com/.image/t_share/MTk2Mjc2ODA4ODk3ODY1MjQz/oct_cover_guesser.jpg',
          ),
        ),
        SizedBox(height: 26),
        Text('The Jungle Book', maxLines: 1, style: Styles.textStyle20),
        SizedBox(height: 6),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        BookRating(mainAxisAlignment: MainAxisAlignment.center),
        SizedBox(height: 20),
        const BooksAction(),
      ],
    );
  }
}
