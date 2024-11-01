import 'package:flutter/widgets.dart';
import 'package:readify/core/utils/style.dart';
import 'package:readify/features/home/presentation/views/widgets/book_details_view_widgets/similar_books_list_view.dart';

class BookDetailsViewBodySection2 extends StatelessWidget {
  const BookDetailsViewBodySection2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Style.textStyle14.copyWith(fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 16,
        ),
        const SimilarBooksListView(),
        
      ],
    );
  }
}
