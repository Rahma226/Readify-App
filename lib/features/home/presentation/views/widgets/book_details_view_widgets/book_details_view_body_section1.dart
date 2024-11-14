import 'package:flutter/widgets.dart';
import 'package:readify/core/utils/style.dart';
import 'package:readify/features/home/data/models/book_model/book_model.dart';
import 'package:readify/features/home/presentation/views/widgets/home_view_widgets/book_rating.dart';
import 'package:readify/features/home/presentation/views/widgets/home_view_widgets/image_card.dart';

class BookDetailsViewBodySection1 extends StatelessWidget {
  const BookDetailsViewBodySection1({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .20),
          child: ImageCard(
            imageURL: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        Text(
          bookModel.volumeInfo.title!,
          style: Style.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            textAlign: TextAlign.center,
            bookModel.volumeInfo.authors![0],
            style: Style.textStyle18.copyWith(fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        BookRating(
          rating: bookModel.volumeInfo.averageRating ?? 0,
          count: bookModel.volumeInfo.ratingsCount ?? 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    );
  }
}
