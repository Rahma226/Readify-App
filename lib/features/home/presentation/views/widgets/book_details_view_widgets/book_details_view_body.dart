import 'package:flutter/material.dart';
import 'package:readify/features/home/data/models/book_model/book_model.dart';
import 'package:readify/features/home/presentation/views/widgets/book_details_view_widgets/book_details_view_body_section1.dart';
import 'package:readify/features/home/presentation/views/widgets/book_details_view_widgets/book_details_view_body_section2.dart';
import 'package:readify/features/home/presentation/views/widgets/book_details_view_widgets/books_action.dart';
import 'package:readify/features/home/presentation/views/widgets/book_details_view_widgets/custom_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
 final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomAppBarBookDetails(),
                 BookDetailsViewBodySection1(bookModel: bookModel,),
                const SizedBox(
                  height: 32,
                ),
                const BooksAction(),
                const Expanded(
                  child: SizedBox(
                    height: 42,
                  ),
                ),
                const BookDetailsViewBodySection2(),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
