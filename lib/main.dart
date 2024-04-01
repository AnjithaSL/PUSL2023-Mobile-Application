import 'package:budget_buddy/firebase_options.dart';
import 'package:budget_buddy/onboarding/home1.dart';
import 'package:budget_buddy/onboarding/onboard.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final onboarding = prefs.getBool("onboarding") ?? false;
  runApp( MyApp(onboarding: onboarding));
   await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  final bool onboarding;
  const MyApp({super.key, this.onboarding = false});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: onboarding? const Home1(): const OnBoard(),
    );
  }
}
