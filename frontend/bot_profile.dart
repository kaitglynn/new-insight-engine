```dart
import 'package:flutter/material.dart';

class BotProfile extends StatefulWidget {
  @override
  _BotProfileState createState() => _BotProfileState();
}

class _BotProfileState extends State<BotProfile> {
  Map<String, dynamic> botProfile = botProfile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bot Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(botProfile['avatar']),
            ),
            SizedBox(height: 10),
            Text(
              botProfile['name'],
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              botProfile['bio'],
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            RaisedButton(
              onPressed: () {
                // Navigate to bot profile edit screen
              },
              child: Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
```