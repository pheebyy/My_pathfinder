import 'package:flutter/material.dart';
import 'package:my_pathfinder/menu.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      drawer: const MenuScreen(),
      body: ListView(
        children: [
          const SizedBox(height: 16.0),
          const Text(
            'Mentee Requests',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8.0),
          _buildMenteeRequest(
            name: 'Tina Mba',
            description:
                'needs help in studying for her WAEC and would appreciate it a lot more',
          ),
          _buildMenteeRequest(
            name: 'Segun Idris',
            description:
                'needs counseling and guidance navigating certain career paths',
          ),
          const SizedBox(height: 16.0),
          const Text(
            'Mentor Bookings',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8.0),
          _buildMentorBooking(
            name: 'Olivier Sunday',
            description:
                'needs help deciding for her Msc as she is clueless on what path to follow in Art or Science',
          ),
          _buildMentorBooking(
            name: 'Alice Oke',
            description:
                'needs help in studying WAEC draft guide appreciation study plan',
          ),
          _buildMentorBooking(
            name: 'Raphael Emeka',
            description:
                'student from Kimpavitsa Secondaire has pockets of doubts he wants iron out before he wants to study medicine',
          ),
          const SizedBox(height: 16.0),
          const Text(
            'Messages',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8.0),
          _buildMessage(
            name: 'Alice Oke',
            message: 'Hello sir...',
          ),
          _buildMessage(
            name: 'Olivier Sunday',
            message: 'I had a...',
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 229, 221, 239),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.home,
                  color: Color.fromARGB(255, 74, 20, 140)),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu_book_outlined,
                  color: Color.fromARGB(255, 74, 20, 140)),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite,
                  color: Color.fromARGB(255, 74, 20, 140)),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person,
                  color: Color.fromARGB(255, 74, 20, 140)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenteeRequest({
    required String name,
    required String description,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 243, 240, 245),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                child: Text(name[0]),
              ),
              const SizedBox(width: 8.0),
              Text(
                name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          Text(description),
          const SizedBox(height: 8.0),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Accept Request'),
          ),
        ],
      ),
    );
  }

  Widget _buildMentorBooking({
    required String name,
    required String description,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 242, 240, 245),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                child: Text(name[0]),
              ),
              const SizedBox(width: 8.0),
              Text(
                name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          Text(description),
        ],
      ),
    );
  }

  Widget _buildMessage({
    required String name,
    required String message,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 243, 240, 245),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          CircleAvatar(
            child: Text(name[0]),
          ),
          const SizedBox(width: 8.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4.0),
                Text(message),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
