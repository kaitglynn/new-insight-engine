```dart
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class FileSharing extends StatefulWidget {
  @override
  _FileSharingState createState() => _FileSharingState();
}

class _FileSharingState extends State<FileSharing> {
  File _file;
  final picker = ImagePicker();

  Future getFile() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _file = File(pickedFile.path);
        fileAttachments.add(_file);
      } else {
        print('No file selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('File Sharing'),
      ),
      body: Center(
        child: _file == null
            ? Text('No file selected.')
            : Image.file(_file),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getFile,
        tooltip: 'Pick File',
        child: Icon(Icons.add),
      ),
    );
  }
}
```