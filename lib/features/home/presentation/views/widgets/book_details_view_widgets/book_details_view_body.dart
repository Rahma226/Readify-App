import 'package:flutter/material.dart';
import 'package:readify/features/home/presentation/views/widgets/book_details_view_widgets/custom_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
            CustomAppBarBookDetails()
        ],
      ),
    );
  }
}

