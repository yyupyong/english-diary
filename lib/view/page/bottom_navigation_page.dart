import 'package:english_diary/app/app.dart';
import 'package:english_diary/exporter/ui_exporter.dart';
import 'package:english_diary/view/page/account/account_page.dart';
import 'package:english_diary/view/page/home/home_screen.dart';

class BottomNavigationPage extends AbstractStatelessWidget {
  const BottomNavigationPage({super.key});

  static const routePath = '/home';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = useState(0);
    final tabController = useTabController(initialLength: 2);

    final pages = [
      const HomeScreen(),
      const AccountPage(),
    ];

    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: TabBar(
            controller: tabController,
            tabs: const [
              Tab(child: Text("おすすめ")),
              Tab(child: Text("フォロー中")),
            ],
          ),
        ),
      ),
      body: pages[selectedIndex.value],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex.value,
        onTap: (int selectIndex) {
          selectedIndex.value = selectIndex;
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "HOME"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "アカウント"),
        ],
      ),
    );
  }
}
