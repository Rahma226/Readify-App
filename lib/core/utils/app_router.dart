import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:readify/core/utils/service_locator.dart';
import 'package:readify/features/home/data/models/book_model/book_model.dart';
import 'package:readify/features/home/data/repos/home_repo_implementation.dart';
import 'package:readify/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:readify/features/home/presentation/views/book_details_view.dart';
import 'package:readify/features/home/presentation/views/home_view.dart';
import 'package:readify/features/search/presentation/views/search_view.dart';
import 'package:readify/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const KhomeView = '/homeView';
  static const KbookDetailsView = '/bookDetailsView';
  static const KsearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: KhomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: KbookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) =>
              SimilarBooksCubit(getIt.get<HomeRepoImplementation>()),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: KsearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
