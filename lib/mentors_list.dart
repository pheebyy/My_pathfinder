import 'package:flutter/material.dart';

class MentorList extends StatefulWidget {
  @override
  _MentorListState createState() => _MentorListState();
}

class _MentorListState extends State<MentorList> {
  // Sample mentor data (replace with actual user data fetching)
  List<Map<String, dynamic>> mentors = [
    {
      "name": "Ngozi Onwuka",
      "expertise": "Marketing",
      "interests": ["Social Media", "Content Marketing"],
      "availability": "Weekdays after 5 PM",
      "communicationMethods": ["Email", "Video Call"],
    },
    {
      "name": "David Lee",
      "expertise": "Software Development",
      "interests": ["Mobile Development", "Cloud Computing"],
      "availability": "Weekends only",
      "communicationMethods": ["Chat", "In-Person Meetings"],
    },
    // ... add more mentors
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Find a Mentor'),
      ),
      body: ListView.builder(
        itemCount: mentors.length,
        itemBuilder: (context, index) {
          final mentor = mentors[index];
          return MentorCard(
              mentor: mentor); // Replace with actual MentorCard widget
        },
      ),
    );
  }
}

// This is a placeholder widget, create a separate widget for MentorCard
class MentorCard extends StatelessWidget {
  final Map<String, dynamic> mentor;

  const MentorCard({required this.mentor});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              mentor["name"],
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text("Expertise: ${mentor["expertise"]}")
          ],
        ),
      ),
    );
  }
}
