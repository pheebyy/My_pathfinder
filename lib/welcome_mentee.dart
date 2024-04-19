import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List<String> interests = [];
  final topics = [
    'Mindfulness',
    'Startups',
    'Goal Setting',
    'Career Development',
    'Emotional Intelligence',
    'Motivation',
    'Leadership',
    'Public Speaking',
    'Communication Skills',
    'Time Management',
    'Technology',
    'Innovation',
    'Creativity',
    'Health & Wellness',
    'Personal Finance',
    'Trends',
    'Social Media',
    'Academics',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  'assets/images/wlogo.jpg',
                  height: 100,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'What interests you?',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple[900],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Select at least three topics you would like us to create a customised feed for you.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.purple[900],
                    ),
                  ),
                  SizedBox(height: 16),
                  Wrap(
                    spacing: 8.0,
                    runSpacing: 8.0,
                    children: List.generate(
                      topics.length,
                      (index) => FilterChip(
                        label: Text(topics[index]),
                        selected: interests.contains(topics[index]),
                        onSelected: (isSelected) {
                          setState(() {
                            if (isSelected) {
                              interests.add(topics[index]);
                            } else {
                              interests.remove(topics[index]);
                            }
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: ElevatedButton(
                      onPressed: interests.length >= 3
                          ? () {
                              // Create customized feed based on selected interests
                              print('Selected interests: $interests');
                              //
                            }
                          : null,
                      child: Text('Done'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple[900],
                        padding: EdgeInsets.symmetric(
                          horizontal: 32,
                          vertical: 16,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
