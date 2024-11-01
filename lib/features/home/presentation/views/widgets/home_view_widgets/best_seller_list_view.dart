import 'package:flutter/material.dart';
import 'package:readify/features/home/presentation/views/widgets/home_view_widgets/best_seller_list_items.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      (context, index) => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 30 , vertical: 10),
        child: BestSellerListItems(),
      ),
      childCount: 10,
    ));
  }
}
