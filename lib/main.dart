import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:smart_save/features/home/pages/home_page.dart';
import 'package:smart_save/features/invest/pages/invest_view.dart';
import 'package:smart_save/features/savings/pages/savings_view.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        useMaterial3: true,
      ),
      home: AnimatedSplashScreen(
        splash: Image.asset('assets/logo.png'),
        duration: 3000,
        splashTransition: SplashTransition.rotationTransition,
        backgroundColor: Colors.deepPurple,
        nextScreen: HomePage(),
      ),
        routes: {
        '/SavingsPage': (context) => const SavingsView(),
          '/InvestmentPage': (context) => const InvestView(),
        }
    );
  }
}

