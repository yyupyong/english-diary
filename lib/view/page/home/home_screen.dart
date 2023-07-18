import 'package:flutter/material.dart';
import 'package:english_diary/exporter/ui_exporter.dart';

class HomeScreen extends AbstractStatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 2);

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.dangerous),
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
    );
  }
}
