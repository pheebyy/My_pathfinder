import 'package:flutter/material.dart';
import 'package:pathfinder/calendar.dart';
import 'package:pathfinder/dashboard.dart';
import 'package:pathfinder/mentor%20_edit_profile.dart';
import 'package:pathfinder/mentor%20requests%20.dart';
import 'package:pathfinder/notification_screen.dart';

class MenuScreen extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const MenuScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF4B0082),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const CustomUserAccountsDrawerHeaderWrapper(
            decoration: BoxDecoration(
              color: Color(0xFF4B0082),
            ),
            currentAccountPicture: CircleAvatar(
              child: Text(
                'PC',
                style: TextStyle(color: Colors.white),
              ),
            ),
            accountName: Text(
              'Phoebe',
              style: TextStyle(color: Colors.white),
            ),
            accountEmail: Text('phoebenykiamo@gmail.com'),
          ),
          ListTile(
            leading: const Icon(Icons.dashboard, color: Colors.white),
            title: const Text(
              'Dashboard',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              // Navigate to the dashboard screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MainScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.book, color: Colors.white),
            title: const Text(
              'Bookings',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              // Navigate to the bookings screen
            },
          ),
          ListTile(
            leading: const Icon(Icons.request_page, color: Colors.white),
            title: const Text(
              'Requests',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              // Navigate to the requests screen
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MentorshipRequestScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.access_time, color: Colors.white),
            title: const Text(
              'Availability',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              // Navigate to the availability screen
            },
          ),
          ListTile(
            leading: const Icon(Icons.calendar_today, color: Colors.white),
            title: const Text(
              'Calendar',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              // Navigate to the calendar screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CalendarScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.notifications, color: Colors.white),
            title: const Text(
              'Notifications',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              // Navigate to the notifications screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class CustomUserAccountsDrawerHeaderWrapper extends StatelessWidget {
  const CustomUserAccountsDrawerHeaderWrapper({
    super.key,
    required this.decoration,
    required this.currentAccountPicture,
    required this.accountName,
    required this.accountEmail,
  });

  final BoxDecoration decoration;
  final Widget currentAccountPicture;
  final Widget accountName;
  final Widget? accountEmail;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: decoration.color,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 40.0, // Increase this value to add more padding
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: currentAccountPicture,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: accountName,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              // Handle edit profile action
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EditBioScreen()),
              );
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Edit Profile',
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
