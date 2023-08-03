import 'package:english_diary/view/page/bottom_navigation_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: BottomNavigationPage.routePath,
    builder: (_, __) => const BottomNavigationPage(),
  ),
]);
