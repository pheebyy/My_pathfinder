import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Dashboard'),
        actions: [
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () {
              _scaffoldKey.currentState?.openEndDrawer();
            },
          ),
        ],
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Amina'),
              accountEmail: Text('Last page'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(
                    'assets/images/user_avatar.png'), // Replace with your actual image asset
              ),
            ),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text('Dashboard'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.library_books),
              title: Text('Resources'),
            ),
            ListTile(
              leading: Icon(Icons.request_page),
              title: Text('Requests'),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.person_add),
              title: Text('Become a Mentor'),
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notification'),
            ),
            ListTile(
              leading: Icon(Icons.stars),
              title: Text('Get Premium'),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Top mentors for you',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/images/mentor1.jpg'), // Replace with your actual image asset
                ),
                SizedBox(width: 8.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Ngozi Onwuka'),
                    Text('Digital Marketing'),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow),
                        Text('4.9'),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 16.0),
                CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/images/mentor2.jpg'), // Replace with your actual image asset
                ),
                SizedBox(width: 8.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Olamide'),
                    Text('UX Writer'),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow),
                        Text('4.8'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              'Featured Events',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/event1.png', // Replace with your actual image asset
                        width: 150.0,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Text('How to become Ridiculously Self-Aware in 20 Minutes'),
                  ],
                ),
                SizedBox(width: 16.0),
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/event2.png', // Replace with your actual image asset
                        width: 150.0,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Text('Get started with Public Speaking'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              'Load more',
              style: TextStyle(
                color: Colors.purple[900],
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Divider(),
            SizedBox(height: 16.0),
            Text(
              'Want to gain a new skill & get certified?',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle explore courses button press
                },
                child: Text('Explore Courses'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
