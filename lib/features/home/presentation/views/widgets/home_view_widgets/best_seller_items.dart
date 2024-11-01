import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:readify/constants.dart';
import 'package:readify/core/utils/app_router.dart';
import 'package:readify/core/utils/assests.dart';
import 'package:readify/core/utils/style.dart';
import 'package:readify/features/home/presentation/views/widgets/home_view_widgets/book_rating.dart';

class BestSellerItems extends StatelessWidget {
  const BestSellerItems({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.KbookDetailsView);
      },
      child: SizedBox(
        height: 124,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.7 / 4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  width: 150,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(Asset.image1),
                    ),
                  ),
                ),
              ),
            ),
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
                      'Harry Potter and the Prisone of Azkaba',
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
                  const Text(
                    'J.K. Rowling',
                    style: Style.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        '19.99 €',
                        style: Style.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      const BookRating(),
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
