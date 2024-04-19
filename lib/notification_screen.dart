import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  final List<NotificationItem> notifications = [
    NotificationItem(
      title: 'Sessions with Fina',
      subtitle: 'Start in 1 hour',
      isGroupSession: false,
    ),
    NotificationItem(
      title: 'Sessions with Fina',
      subtitle: 'Start in 1 hour',
      isGroupSession: false,
    ),
    NotificationItem(
      title: 'This week group session for you',
      subtitle: 'Tomorrow with Tina',
      isGroupSession: true,
    ),
    NotificationItem(
      title: 'This week group session for you',
      subtitle: 'Tomorrow with Tina',
      isGroupSession: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: notifications[index].isGroupSession
                  ? Icon(Icons.group)
                  : Icon(Icons.person),
            ),
            title: Text(notifications[index].title),
            subtitle: Text(notifications[index].subtitle),
          );
        },
      ),
    );
  }
}

class NotificationItem {
  final String title;
  final String subtitle;
  final bool isGroupSession;

  NotificationItem({
    required this.title,
    required this.subtitle,
    required this.isGroupSession,
  });
}
