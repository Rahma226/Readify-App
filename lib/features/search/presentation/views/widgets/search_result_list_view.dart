import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:readify/core/widgets/custom_loading_indicator.dart';
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
          if (state.books.isEmpty) {
            return const Center(
              child: Text('No results found.', style: Style.textStyle16),
            );
          }
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
        } else if (state is SearchBooksLoading) {
          return CustomLoadingIndicator();
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
