import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomAppBarBookDetails extends StatelessWidget {
  const CustomAppBarBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon:const Icon(Icons.close),
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon:const Icon(Icons.shopping_cart_outlined),
        ),
      ],
    );
  }
}
