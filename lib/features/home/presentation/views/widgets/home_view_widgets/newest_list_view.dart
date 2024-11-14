import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:readify/core/widgets/custom_error_widget.dart';
import 'package:readify/core/widgets/custom_loading_indicator.dart';
import 'package:readify/features/home/presentation/manager/newest%20books/newest_books_cubit.dart';
import 'package:readify/features/home/presentation/views/widgets/home_view_widgets/newest_items.dart';

class NewestListView extends StatelessWidget {
  const NewestListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: NewestItems(
                  bookModel: state.books[index],
                ),
              ),
              childCount: state.books.length,
            ),
          );
        } else if (state is NewestBooksFailure) {
          return SliverToBoxAdapter(
            child: CustomErrorWidget(errMessage: state.errMessage),
          );
        } else {
          return SliverToBoxAdapter(
            child: CustomLoadingIndicator(),
          );
        }
      },
    );
  }
}
