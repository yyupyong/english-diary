import 'package:english_diary/view/page/bottom_navigation_page.dart';
import 'package:english_diary/view/page/sign_in/sign_in.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: SignInPage.routePath,
    builder: (_, __) => const SignInPage(),
  ),
  GoRoute(
    path: BottomNavigationPage.routePath,
    builder: (_, __) => const BottomNavigationPage(),
  ),
]);
