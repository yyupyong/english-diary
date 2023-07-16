import 'package:english_diary/exporter/ui_exporter.dart';
import 'package:english_diary/view/page/account/account_page.dart';
import 'package:english_diary/view/page/home/home_screen.dart';

class BottomNavigationPage extends AbstractStatelessWidget {
  const BottomNavigationPage({super.key});

  static const routePath = '/home';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectIndex = useState(0);
    final pages = [
      const HomeScreen(),
      const AccountPage(),
    ];
    return Scaffold();
  }
}
