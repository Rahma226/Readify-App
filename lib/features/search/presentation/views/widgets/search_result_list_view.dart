import 'package:flutter/widgets.dart';
import 'package:readify/features/home/presentation/views/widgets/home_view_widgets/best_seller_items.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 3,
      itemBuilder: (context, index) {
        return Padding(  
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: BestSellerItems(),
        );
      },
    );
  }
}
