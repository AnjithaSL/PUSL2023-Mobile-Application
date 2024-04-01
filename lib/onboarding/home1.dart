import 'package:budget_buddy/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home1 extends StatelessWidget {
  const Home1({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: TextButton(
          onPressed: () async {
            final prefs = await SharedPreferences.getInstance();
            prefs.setBool("onboarding", true);
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const MainPage()),
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: GestureDetector(
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  " Click here to  verify your not a robot ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
