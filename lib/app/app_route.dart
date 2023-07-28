import 'package:english_diary/view/page/home/home_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(routes: [
  GoRoute(path: HomeScreen.routePath, builder: (_, __) => const HomeScreen())
]);
