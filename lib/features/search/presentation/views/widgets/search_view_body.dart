import 'package:flutter/widgets.dart';
import 'package:readify/core/utils/style.dart';
import 'package:readify/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:readify/features/search/presentation/views/widgets/search_result_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Search Result',
            style: Style.textStyle18.copyWith(fontWeight: FontWeight.w600),
          ),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
