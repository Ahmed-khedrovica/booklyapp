import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });

  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      spacing: 7,
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Colors.amber,
        size: 16,
        ),

        Text('4.8', style: Styles.textStyle18),
        Opacity(
            opacity: 0.7,
            child: Text('(2345)', style: Styles.textStyle18)),
      ],
    );
  }
}
