import 'package:flutter/material.dart';
import 'package:pathfinder/mentee_review.dart';

class MenteeRequestCard extends StatelessWidget {
  final String name;
  final String profileUrl; // Assuming profileUrl is a String
  final String academicLevel;

  const MenteeRequestCard({
    Key? key,
    required this.name,
    required this.profileUrl,
    required this.academicLevel,
  }) : super(key: key);

  get interests => '';

  get goals => '';

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(profileUrl),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: const TextStyle(fontSize: 16.0)),
                  Text(academicLevel),
                ],
              ),
            ),
            const SizedBox(width: 16.0),
            Row(
              children: [
                OutlinedButton(
                  onPressed: () {
                    // Implement review functionality

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MenteeReviewScreen(
                              name: name,
                              academicLevel: academicLevel,
                              interests: interests,
                              goals: goals)),
                    );
                  },
                  child: const Text('Review'),
                ),
                const SizedBox(width: 8.0),
                ElevatedButton(
                  onPressed: () {
                    // Implement accept functionality
                  },
                  child: const Text('Accept'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MentorshipRequestScreen extends StatefulWidget {
  @override
  _MentorshipRequestScreenState createState() =>
      _MentorshipRequestScreenState();
}

class _MentorshipRequestScreenState extends State<MentorshipRequestScreen> {
  List<MenteeRequestCard> requests = [
    MenteeRequestCard(
      name: 'Raphael Emeka',
      profileUrl: 'https://example.com/profile.png', // Placeholder
      academicLevel: 'SS1 Student',
    ),
    MenteeRequestCard(
      name: 'Tina Mba',
      profileUrl: 'https://example.com/profile2.png', // Placeholder
      academicLevel: 'SS3 Student',
    ),
    // Add more requests as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mentorship Requests'),
      ),
      body: ListView.builder(
        itemCount: requests.length,
        itemBuilder: (context, index) => requests[index],
      ),
    );
  }
}
