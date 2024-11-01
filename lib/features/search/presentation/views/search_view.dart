import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:readify/features/search/presentation/views/widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 24),
          child: SearchViewBody(),
        ),
        ),
    );
  }
}