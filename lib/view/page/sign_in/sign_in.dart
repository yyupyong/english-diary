import 'package:english_diary/exporter/ui_exporter.dart';

class SignInPage extends AbstractStatelessWidget {
  const SignInPage({super.key});

  static const routePath = '/sign_in';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(1), child: Divider(height: 1)),
      ),
    );
  }
}
