import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // for date formatting

class BookSessionPage extends StatefulWidget {
  @override
  _BookSessionPageState createState() => _BookSessionPageState();
}

class _BookSessionPageState extends State<BookSessionPage> {
  List<String> _selectedOptions = [];
  DateTime _selectedDate = DateTime.now();

  void _handleDateChange(DateTime newDate) {
    setState(() {
      _selectedDate = newDate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book a session'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('For the mentor to know you better'),
              SizedBox(height: 10),
              Wrap(
                spacing: 8.0,
                children: [
                  ChoiceChip(
                    label: Text('Goal Setting'),
                    selected: _selectedOptions.contains('Goal Setting'),
                    onSelected: (val) {
                      setState(() {
                        val
                            ? _selectedOptions.add('Goal Setting')
                            : _selectedOptions.remove('Goal Setting');
                      });
                    },
                  ),
                  ChoiceChip(
                    label: Text('Higher Education'),
                    selected: _selectedOptions.contains('Higher Education'),
                    onSelected: (val) {
                      setState(() {
                        val
                            ? _selectedOptions.add('Higher Education')
                            : _selectedOptions.remove('Higher Education');
                      });
                    },
                  ),
                  ChoiceChip(
                    label: Text('Technology'),
                    selected: _selectedOptions.contains('Technology'),
                    onSelected: (val) {
                      setState(() {
                        val
                            ? _selectedOptions.add('Technolgy')
                            : _selectedOptions.remove('Technology');
                      });
                    },
                  ),
                  // ... add more choice chips
                ],
              ),
              SizedBox(height: 10),
              Text('Ask mentor anything related to?'),
              SizedBox(height: 10),
              Wrap(
                spacing: 8.0,
                children: [
                  ChoiceChip(
                    label: Text('College'),
                    selected: _selectedOptions.contains('College'),
                    onSelected: (val) {
                      setState(() {
                        val
                            ? _selectedOptions.add('College')
                            : _selectedOptions.remove('College');
                      });
                    },
                  ),
                  ChoiceChip(
                    label: Text('Marketing'),
                    selected: _selectedOptions.contains('Marketing'),
                    onSelected: (val) {
                      setState(() {
                        val
                            ? _selectedOptions.add('Marketing')
                            : _selectedOptions.remove('Marketing');
                      });
                    },
                  ),
                  ChoiceChip(
                    label: Text('Networking'),
                    selected: _selectedOptions.contains('Networking'),
                    onSelected: (val) {
                      setState(() {
                        val
                            ? _selectedOptions.add('Networking')
                            : _selectedOptions.remove('Networking');
                      });
                    },
                  ),
                  ChoiceChip(
                    label: Text('Work-life Balance'),
                    selected: _selectedOptions.contains('Work-life Balance'),
                    onSelected: (val) {
                      setState(() {
                        val
                            ? _selectedOptions.add('Work-life Balance')
                            : _selectedOptions.remove('Work-life Balance');
                      });
                    },
                  ),
                  ChoiceChip(
                    label: Text('Negotiation Skills'),
                    selected: _selectedOptions.contains('Negotiation Skills'),
                    onSelected: (val) {
                      setState(() {
                        val
                            ? _selectedOptions.add('Negotiation Skills')
                            : _selectedOptions.remove('Negotiation Skills');
                      });
                    },
                  ),
                  // ... add more choice chips
                ],
              ),

              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(DateFormat('EEEE, d MMMM').format(_selectedDate)),
                  ElevatedButton(
                    onPressed: () => _handleDateChange(showDatePicker(
                      context: context,
                      initialDate: _selectedDate,
                      firstDate: DateTime.now(),
                      lastDate: DateTime.now().add(Duration(days: 30)),
                    ).then((date) => setState(() => _selectedDate = date!))
                        as DateTime),
                    child: Text('Select Date'),
                  ),
                ],
              ),
              SizedBox(height: 10),
              // Placeholder for time selection (implement a time picker widget)
              Text('**Placeholder:** Select Time Slot'),
              SizedBox(height: 50),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Drop a message for your mentor',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle session booking logic (placeholder)
                  print('Booking session...');
                },
                child: Text('Book Session'),
              ),
            ],
          ),
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
