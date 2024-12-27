import 'package:citytech/config/themes.dart';
import 'package:citytech/core/di_container/di_locator.dart';
import 'package:citytech/presentation/screens/home_screen.dart';
import 'package:citytech/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setUpLocator();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'City Report',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
      },
      theme: AppThemes.lightTheme,
    );
  }
}
