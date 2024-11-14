import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:readify/features/home/presentation/views/widgets/home_view_widgets/newest_items.dart';
import 'package:readify/features/search/presentation/manager/search%20books%20cubit/search_books_cubit.dart';
import '../../../../../core/utils/style.dart';
import '../../../../../core/widgets/custom_error_widget.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if (state is SearchBooksSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: NewestItems(bookModel: state.books[index]),
              );
            },
          );
        } else if (state is SearchBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return Center(
            child: Text(
              'No results!',
              style: Style.textStyle18,
            ),
          );
        }
      },
    );
  }
}
