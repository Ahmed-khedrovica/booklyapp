import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 7,
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Colors.amber),

        Text('4.8', style: Styles.textStyle18),
        Text('(2345)', style: Styles.textStyle18.copyWith(color: Colors.grey)),
      ],
    );
  }
}
