```dart
import 'package:flutter/material.dart';

class HelpSupportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help & Support'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.question_answer),
            title: Text('FAQs'),
            onTap: () {
              // Navigate to FAQs page
            },
          ),
          ListTile(
            leading: Icon(Icons.mail),
            title: Text('Contact Us'),
            onTap: () {
              // Navigate to Contact Us page
            },
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('User Guide'),
            onTap: () {
              // Navigate to User Guide page
            },
          ),
          ListTile(
            leading: Icon(Icons.bug_report),
            title: Text('Report a Problem'),
            onTap: () {
              // Navigate to Report a Problem page
            },
          ),
        ],
      ),
    );
  }
}
```