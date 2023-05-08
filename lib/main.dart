import 'package:fluent_ui/fluent_ui.dart';
import 'package:blockpay/home.dart';
import 'package:window_manager/window_manager.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Window.initialize();
  await WindowManager.instance.ensureInitialized();

  windowManager.waitUntilReadyToShow().then((_) async {
    await windowManager.setTitleBarStyle(
      TitleBarStyle.normal,
      windowButtonVisibility: true,
    );
    await windowManager.center();
    await windowManager.show();
    await windowManager.setSkipTaskbar(false);
    await Window.setEffect(
      effect: WindowEffect.mica,
      color: const Color(0xCC222222),
    );
  });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      title: 'Payment App',
      theme: FluentThemeData(
          accentColor: Colors.blue, brightness: Brightness.dark),
      themeMode: ThemeMode.dark,
      home: MyHomePage(),
    );
  }
}
