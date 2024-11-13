import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readify/core/widgets/custom_loading_indicator.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({super.key, required this.imageURL});

  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: CachedNetworkImage(
          imageUrl: imageURL,
          fit: BoxFit.fill,
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ),
    );
  }
}
