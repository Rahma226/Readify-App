import 'package:flutter/widgets.dart';
import 'package:readify/core/utils/list_of_images.dart';
import 'package:readify/features/home/presentation/views/widgets/home_view_widgets/image_card.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .16,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: ListOfImages.imagesList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 5),
            child: ImageCard(
              image: ListOfImages.imagesList[index],
            ),
          );
        },
      ),
    );
  }
}