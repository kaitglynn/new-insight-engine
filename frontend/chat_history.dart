```dart
import 'package:flutter/material.dart';

class ChatHistory extends StatefulWidget {
  @override
  _ChatHistoryState createState() => _ChatHistoryState();
}

class _ChatHistoryState extends State<ChatHistory> {
  List<Map<String, dynamic>> chatHistory = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat History'),
      ),
      body: ListView.builder(
        itemCount: chatHistory.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.message),
            title: Text(chatHistory[index]['userMessage']),
            subtitle: Text(chatHistory[index]['botMessage']),
            trailing: Text(chatHistory[index]['timestamp']),
          );
        },
      ),
    );
  }

  void loadChatHistory() {
    // TODO: Implement function to load chat history from backend
  }
}
```