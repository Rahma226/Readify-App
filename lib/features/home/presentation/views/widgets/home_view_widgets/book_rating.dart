import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readify/core/utils/style.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, this.mainAxisAlignment= MainAxisAlignment.start});
final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 14,
        ),
        const SizedBox(
          width: 6.3,
        ),
        const Text(
          '4.8',
          style: Style.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        const Opacity(
          opacity: .5,
          child: Text(
            '(2544)',
            style: Style.textStyle14,
          ),
        )
      ],
    );
  }
}
