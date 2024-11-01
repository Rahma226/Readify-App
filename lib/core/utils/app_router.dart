import 'package:go_router/go_router.dart';
import 'package:readify/features/home/presentation/views/home_view.dart';
import 'package:readify/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter 
{
  static const KhomeView = '/homeView';
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
  ],
);
}