import 'package:english_diary/exporter/ui_exporter.dart';
import 'package:english_diary/view/widget/home/diary_thread.dart';

class HomeScreen extends AbstractStatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 2);

    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: Text('english-diary'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
        ],
        bottom: TabBar(
          controller: tabController,
          tabs: const [
            Tab(child: Text("おすすめ")),
            Tab(child: Text("フォロー中")),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return const DiaryThread();
            }),
      ),
    );
  }
}
