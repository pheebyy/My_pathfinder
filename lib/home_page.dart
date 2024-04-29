import 'package:flutter/material.dart';
import 'package:pathfinder/book_session.dart';
import 'package:pathfinder/mentee_settings.dart';
import 'package:pathfinder/mentors_list.dart';
import 'package:pathfinder/welcome_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 224, 217, 243),
      key: _scaffoldKey,
      appBar: AppBar(
        //backgroundColor: Color.fromARGB(255, 224, 217, 243),
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
        backgroundColor: Colors.purple[900],
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Phoebe'),
              accountEmail: Text('phoebechristine@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(
                    'assets/images/6691.jpg'), // Replace with your actual image asset
              ),
            ),
            ListTile(
              leading: Icon(Icons.dashboard, color: Colors.white),
              title: Text(
                'Dashboard',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Navigate to the dashboard screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.white),
              title: Text('Settings', style: TextStyle(color: Colors.white)),
              onTap: () {
                // Navigate to the dashboard screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.library_books, color: Colors.white),
              title: Text('Resources', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.request_page, color: Colors.white),
              title: Text('Requests', style: TextStyle(color: Colors.white)),
              onTap: () {
                // Navigate to the dashboard screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookSessionPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.message, color: Colors.white),
              title: Text('Messages', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.person_add, color: Colors.white),
              title: Text('Become a Mentor',
                  style: TextStyle(color: Colors.white)),
              onTap: () {
                // Navigate to the dashboard screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WelcomeScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications, color: Colors.white),
              title:
                  Text('Notification', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.stars, color: Colors.white),
              title: Text('Get Premium', style: TextStyle(color: Colors.white)),
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
              style: TextStyle(color: Color.fromARGB(255, 16, 16, 16)),
              decoration: InputDecoration(
                fillColor: Colors.white,
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              onTap: () {
                // Navigate to the dashboard screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MentorList()),
                );
              },
            ),
            SizedBox(height: 16.0),
            Text(
              'Top mentors for you',
              style: TextStyle(
                fontSize: 20.0,
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
                fontSize: 20.0,
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
                        'assets/images/Relationship.jpg', // Replace with your actual image asset
                        width: 150.0,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Text('Self-Awareness in 20 Minutes'),
                  ],
                ),
                SizedBox(width: 16.0),
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/Mentor Relationship.jpg', // Replace with your actual image asset
                        width: 150.0,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Text('Public Speaking'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 18.0),
            Text(
              'Load more',
              style: TextStyle(
                color: Colors.purple[900],
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Divider(),
            SizedBox(height: 18.0),
            Container(
              color: Colors.purple[900],
              padding: EdgeInsets.only(top: 16.0, left: 20, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Want to gain a new skill & get certified?',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Center(
                    child: SizedBox(
                      width: 100,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle explore courses button press
                        },
                        child: Text(
                          'Explore Courses',
                          style: TextStyle(
                            color: Colors.purple[900],
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 235, 215, 254),
                          foregroundColor: Colors.purple[900],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.purple[900],
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu_book_sharp,
              color: Colors.purple[900],
            ),
            label: 'Resources',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Colors.purple[900],
            ),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,
                color: const Color.fromARGB(255, 80, 23, 151)),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
