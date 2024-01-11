```dart
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _name;
  String _avatar;
  String _bio;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Name'),
              validator: (String value) {
                if (value.isEmpty) {
                  return 'Name is Required';
                }
                return null;
              },
              onSaved: (String value) {
                _name = value;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Avatar URL'),
              validator: (String value) {
                if (value.isEmpty) {
                  return 'Avatar URL is Required';
                }
                return null;
              },
              onSaved: (String value) {
                _avatar = value;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Bio'),
              validator: (String value) {
                if (value.isEmpty) {
                  return 'Bio is Required';
                }
                return null;
              },
              onSaved: (String value) {
                _bio = value;
              },
            ),
            RaisedButton(
              child: Text(
                'Save',
                style: TextStyle(color: Colors.blue, fontSize: 16),
              ),
              onPressed: () {
                if (!_formKey.currentState.validate()) {
                  return;
                }
                _formKey.currentState.save();
                print(_name);
                print(_avatar);
                print(_bio);
              },
            )
          ],
        ),
      ),
    );
  }
}
```