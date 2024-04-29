import 'package:flutter/material.dart';
import 'package:pathfinder/mentee_edit_profile.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/6691.jpg'),
            ),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              // Upgrade to Premium action
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple[900],
            ),
            child: Text(
              'Upgrade now - Get Premium',
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(height: 16.0),
          Text(
            'Settings',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 28.0),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.notifications, color: Colors.purple[900]),
                  title: Text('Notifications'),
                  onTap: () {
                    // Navigate to Notifications settings
                  },
                ),
                ListTile(
                  leading: Icon(Icons.lock, color: Colors.purple[900]),
                  title: Text('Privacy'),
                  onTap: () {
                    // Navigate to Privacy settings
                  },
                ),
                ListTile(
                  leading: Icon(Icons.security, color: Colors.purple[900]),
                  title: Text('Security'),
                  onTap: () {
                    // Navigate to Security settings
                  },
                ),
                ListTile(
                  leading:
                      Icon(Icons.account_circle, color: Colors.purple[900]),
                  title: Text('Account'),
                  onTap: () {
                    // Navigate to Account settings
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EditBioPage()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.help, color: Colors.purple[900]),
                  title: Text('Help & Feedback'),
                  onTap: () {
                    // Navigate to Help & Feedback
                  },
                ),
                ListTile(
                  leading: Icon(Icons.info, color: Colors.purple[900]),
                  title: Text('About'),
                  onTap: () {
                    // Navigate to About section
                  },
                ),
                ListTile(
                  leading: Icon(Icons.share, color: Colors.purple[900]),
                  title: Text('Invite a Friend'),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Refer a Friend'),
                          content: Text(
                            'Invite a Friend ...\n-- and get 2 free mentoring sessions',
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                // Share referral link
                              },
                              child: Text('Share link'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
