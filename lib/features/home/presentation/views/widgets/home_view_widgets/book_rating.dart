import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readify/constants.dart';
import 'package:readify/core/utils/style.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 16,
        ),
        const SizedBox(
          width: 6.3,
        ),
        const Text(
          '4.8',
          style: Style.textStyle14,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '(2544)',
          style: Style.textStyle14.copyWith(color: Kcolor2),
        )
      ],
    );
  }
}
