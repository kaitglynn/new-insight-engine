```dart
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  bool notificationSettings;

  @override
  void initState() {
    super.initState();
    notificationSettings = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: ListView(
        children: <Widget>[
          SwitchListTile(
            title: Text('Enable Notifications'),
            value: notificationSettings,
            onChanged: (bool value) {
              setState(() {
                notificationSettings = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
```