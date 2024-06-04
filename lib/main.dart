import 'package:shared_preferences/shared_preferences.dart';

import './onboarding/onboarding_view.dart';
import 'package:flutter/material.dart';

import 'home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final onboarding=prefs.getBool("onboarding")??false;
  runApp(MyApp(onboarding: onboarding));
}

class MyApp extends StatelessWidget {
  final bool onboarding;
  const MyApp({super.key, this.onboarding=false});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
        home: onboarding? Home(): OnboardingView(),
    );
  }
}
