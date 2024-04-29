import 'package:flutter/material.dart';

class MenteeReviewScreen extends StatelessWidget {
  final String name;
  final String academicLevel;
  final String
      interests; // Assuming the mentor provides their areas of interest
  final String goals; // Assuming the mentor provides their goals

  const MenteeReviewScreen({
    Key? key,
    required this.name,
    required this.academicLevel,
    required this.interests,
    required this.goals,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Review - $name'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Mentee Information', style: const TextStyle(fontSize: 18.0)),
            const SizedBox(height: 8.0),
            Row(
              children: [
                const Text('Name: '),
                Text(name),
              ],
            ),
            const SizedBox(height: 4.0),
            Row(
              children: [
                const Text('Academic Level: '),
                Text(academicLevel),
              ],
            ),
            const Divider(thickness: 1.0),
            const SizedBox(height: 8.0),
            Text('Mentee Interests', style: const TextStyle(fontSize: 18.0)),
            const SizedBox(height: 8.0),
            Text(interests),
            const Divider(thickness: 1.0),
            const SizedBox(height: 8.0),
            Text('Mentee Goals', style: const TextStyle(fontSize: 18.0)),
            const SizedBox(height: 8.0),
            Text(goals),
          ],
        ),
      ),
    );
  }
}
