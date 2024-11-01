import 'package:go_router/go_router.dart';
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
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: KsearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
