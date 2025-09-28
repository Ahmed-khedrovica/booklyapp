import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start, required this.rating, required this.count,
  });

  final MainAxisAlignment mainAxisAlignment;
  final String rating;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      spacing: 7,
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Colors.amber, size: 16),

        Text(rating.toString(), style: Styles.textStyle18),
        Opacity(
          opacity: 0.7,
          child: Text(
            '($count)',
            style: Styles.textStyle18.copyWith(overflow: TextOverflow.ellipsis),
          ),
        ),
      ],
    );
  }
}
