import 'package:english_diary/exporter/ui_exporter.dart';

class DiaryTile extends AbstractStatelessWidget {
  const DiaryTile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Placeholder(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        width: 300,
        height: 250,
        child: Text("ss"),
      ),
    );
  }
}

class UserDiaryItem extends AbstractStatelessWidget {
  const UserDiaryItem({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Placeholder();
  }
}
