import 'package:budget_buddy/pages/auth.dart';
import 'package:budget_buddy/pages/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else {
            if (snapshot.hasData) {
              return const Home();
            } else {
              return const AuthPage();
            }
          }
        },
      ),
    );
  }
}
