```dart
import 'package:flutter/material.dart';

class ChatInterface extends StatefulWidget {
  @override
  _ChatInterfaceState createState() => _ChatInterfaceState();
}

class _ChatInterfaceState extends State<ChatInterface> {
  final TextEditingController _chatController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: chatHistory.length,
              itemBuilder: (context, index) {
                final message = chatHistory[index];
                return ListTile(
                  title: Text(message['userMessage'] ?? ''),
                  subtitle: Text(message['botMessage'] ?? ''),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: _chatController,
                    decoration: InputDecoration(
                      hintText: 'Type a message',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    sendChatMessage(_chatController.text);
                    _chatController.clear();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void sendChatMessage(String message) {
    setState(() {
      chatHistory.add({
        'userMessage': message,
        'botMessage': receiveChatMessage(),
      });
    });
  }

  String receiveChatMessage() {
    // TODO: Implement bot response logic
    return 'Bot response';
  }
}
```