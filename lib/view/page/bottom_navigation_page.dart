import 'package:english_diary/app/app.dart';
import 'package:english_diary/exporter/ui_exporter.dart';
import 'package:english_diary/view/page/account/account_page.dart';
import 'package:english_diary/view/page/home/home_screen.dart';
import 'package:english_diary/view/page/serch/serch_page.dart';

class BottomNavigationPage extends AbstractStatelessWidget {
  const BottomNavigationPage({super.key});

  static const routePath = '/home';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = useState(0);

    final pages = [
      const HomeScreen(),
      const AccountPage(),
    ];
    return Scaffold(
      body: pages[selectedIndex.value],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex.value,
        onTap: (int selectIndex) {
          selectedIndex.value = selectIndex;
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "ホーム"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "マイページ"),
        ],
      ),
    );
  }
}
