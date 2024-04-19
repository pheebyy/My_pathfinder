// welcome_screen.dart
import 'package:flutter/material.dart';
import 'package:my_pathfinder/mentee_age.dart';
import 'package:my_pathfinder/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[900],
      body: Column(
        children: [
          const Spacer(),
          Container(
            width: 150,
            height: 150,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Image.asset(
              'assets/images/wlogo.jpg',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 60),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  const Text(
                    'Continue as',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 74, 20, 140),
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to signup page for mentee
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AgeScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 197, 176, 232),
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    child: const Text(
                      'Mentee',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 74, 20, 140),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to signup page for mentor
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const SignUpScreen(userType: 'mentor'),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 197, 176, 232),
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    child: const Text(
                      'Mentor',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 61, 6, 150),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
