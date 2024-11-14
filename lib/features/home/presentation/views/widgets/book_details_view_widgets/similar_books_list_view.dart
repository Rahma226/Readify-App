import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:readify/core/widgets/custom_error_widget.dart';
import 'package:readify/core/widgets/custom_loading_indicator.dart';
import 'package:readify/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:readify/features/home/presentation/views/widgets/home_view_widgets/image_card.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .16,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: ImageCard(
                    imageURL:
                        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpixlr.com%2Fimage-generator%2F&psig=AOvVaw311Y_-xbFZot-iWsTcnC4V&ust=1731587461246000&source=images&cd=vfe&opi=89978449&ved=0CBcQjhxqFwoTCLCNhJOo2YkDFQAAAAAdAAAAABAG',
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
