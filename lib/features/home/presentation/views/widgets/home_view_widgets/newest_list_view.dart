import 'package:flutter/material.dart';
import 'package:readify/features/home/presentation/views/widgets/home_view_widgets/newest_items.dart';

class NewestListView extends StatelessWidget {
  const NewestListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      (context, index) => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 30 , vertical: 10),
        child: NewestItems(),
      ),
      childCount: 10,
    ));
  }
}
