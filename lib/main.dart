import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:readify/constants.dart';
import 'package:readify/core/utils/app_router.dart';
import 'package:readify/core/utils/service_locator.dart';
import 'package:readify/features/home/data/repos/home_repo_implementation.dart';
import 'package:readify/features/home/presentation/manager/featured%20books%20cubit/featured_books_cubit.dart';
import 'package:readify/features/home/presentation/manager/newest%20books/newest_books_cubit.dart';

void main() {
  setUp();
  runApp(const Readify());
}

class Readify extends StatelessWidget {
  const Readify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImplementation>(),
          ) ..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImplementation>(),
          ) ..fetchNewestdBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: KprimaryColor,
          textTheme: ThemeData.dark().textTheme.apply(
                fontFamily: KPrimaryFontFamily,
              ),
        ),
      ),
    );
  }
}
