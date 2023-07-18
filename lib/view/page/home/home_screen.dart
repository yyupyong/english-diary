import 'package:english_diary/exporter/ui_exporter.dart';

class HomeScreen extends AbstractStatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 2);

    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: TabBar(
            controller: tabController,
            tabs: const [
              Tab(child: Text("おすすめ")),
              //ここにおすすめのスレッドとフォロワーのスレッドが表示される
              Tab(child: Text("フォロー中")),
            ],
          ),
        ),
      ),
    );
  }
}
