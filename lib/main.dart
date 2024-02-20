import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';
import 'package:social_login_notification/widgets/my_drawer/my_drawer.store.dart';
import 'firebase_options.dart';
import 'pages/splash_screen.page.dart';

final globalNavigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  GetIt.I.registerSingleton(MyDrawerStore());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social login with notification',
      navigatorKey: globalNavigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: const ColorScheme.light(
            primary: Color(0xFFf9f4ec),
          ),
          scaffoldBackgroundColor: const Color(0xFFf9f4ec),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
            elevation: 0,
            foregroundColor: Colors.black,
          ),
          progressIndicatorTheme: const ProgressIndicatorThemeData(
            color: Colors.green,
          ),
          listTileTheme: const ListTileThemeData(
            selectedColor: Colors.blue,
          )),
      home: const SplashScreenPage(),
    );
  }
}
