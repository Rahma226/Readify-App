import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:readify/constants.dart';
import 'package:readify/core/utils/app_router.dart';
import 'package:readify/core/utils/style.dart';
import 'package:readify/features/home/data/models/book_model/book_model.dart';
import 'package:readify/features/home/presentation/views/widgets/home_view_widgets/book_rating.dart';
import 'package:readify/features/home/presentation/views/widgets/home_view_widgets/image_card.dart';

class NewestItems extends StatelessWidget {
  const NewestItems({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.KbookDetailsView, extra: bookModel);
      },
      child: SizedBox(
        height: 124,
        child: Row(
          children: [
            ImageCard(
                imageURL: bookModel.volumeInfo.imageLinks?.thumbnail ?? ''),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      style: Style.textStyle20.copyWith(
                          fontFamily: KSecondryFontFamily,
                          fontWeight: FontWeight.w500),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    bookModel.volumeInfo.authors?[0] ?? 'no auther',
                    style: Style.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Style.textStyle20.copyWith(
                            fontWeight: FontWeight.bold, color: Kcolor1),
                      ),
                      const Spacer(),
                      BookRating(
                        rating: bookModel.volumeInfo.averageRating ?? 0,
                        count: bookModel.volumeInfo.ratingsCount ?? 0,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
