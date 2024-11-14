import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:readify/core/utils/service_locator.dart';
import 'package:readify/features/home/data/repos/home_repo_implementation.dart';
import 'package:readify/features/search/presentation/manager/search%20books%20cubit/search_books_cubit.dart';
import 'package:readify/features/search/presentation/views/widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          SearchBooksCubit(getIt.get<HomeRepoImplementation>()),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(FontAwesomeIcons.arrowLeftLong),
          ),
        ),
        body: SafeArea(
          child: SearchViewBody(),
        ),
      ),
    );
  }
}
