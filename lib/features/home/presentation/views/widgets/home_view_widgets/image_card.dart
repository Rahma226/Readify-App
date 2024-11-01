import 'package:flutter/cupertino.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          width: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover, 
              image: AssetImage(image),
            ),
          ),
        ),
      ),
    );
  }
}
