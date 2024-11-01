import 'package:flutter/material.dart';
import 'package:readify/core/utils/style.dart';
import 'package:readify/features/home/presentation/views/widgets/home_view_widgets/best_seller_list_view.dart';
import 'package:readify/features/home/presentation/views/widgets/home_view_widgets/books_list_view.dart';
import 'package:readify/features/home/presentation/views/widgets/home_view_widgets/custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const Padding(
                padding:  EdgeInsets.symmetric(horizontal: 30),
                child: CustomAppBar(),
              ),
              const SizedBox(
                height: 24,
              ),
              const BooksListView(),
              const SizedBox(
                height: 42,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Best Seller',
                  style: Style.textStyle18.copyWith(fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
       const BestSellerListView(),
      ],
    );
  }
}
