import 'package:flutter/widgets.dart';
import 'package:readify/core/utils/assests.dart';
import 'package:readify/core/utils/style.dart';
import 'package:readify/features/home/presentation/views/widgets/home_view_widgets/book_rating.dart';
import 'package:readify/features/home/presentation/views/widgets/home_view_widgets/image_card.dart';

class BookDetailsViewBodySection1 extends StatelessWidget {
  const BookDetailsViewBodySection1({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .20),
          child: const ImageCard(image: Asset.image3),
        ),
        const SizedBox(
          height: 32,
        ),
        const Text(
          'Kristin Hannah',
          style: Style.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            'J.K. Rowling',
            style: Style.textStyle18.copyWith(fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    );
  }
}
