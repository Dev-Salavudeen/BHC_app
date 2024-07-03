import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/message_input_widget.dart';
import '../widgets/message_widget.dart';

class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  final List<Message> _messages = [
    Message(
      senderName: 'Bob',
      senderPic: 'assets/personOne.png',
      text: 'Hello!',
    ),
    // Add more messages here
  ];

  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  void _sendMessage() {
    final messageText = _messageController.text;
    if (messageText.isNotEmpty) {
      setState(() {
        _messages.add(
          Message(
            senderName: 'You',
            senderPic: 'assets/personTwo.png',
            text: messageText,
          ),
        );
        _messageController.clear();
      });
      _scrollToBottom();
    }
  }

  void _scrollToBottom() {
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFAD2524),
        title: Text(
          'Ryan',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            context.go('/message_home_view');

          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 19,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
                final isSentByMe = message.senderName == 'You';

                return MessageWidget(
                  message: message,
                  isSentByMe: isSentByMe,
                );
              },
            ),
          ),
          MessageInputWidget(
            messageController: _messageController,
            onSendMessage: _sendMessage,
          ),
        ],
      ),
    );
  }
}

class Message {
  final String senderName;
  final String senderPic;
  final String text;

  Message({
    required this.senderName,
    required this.senderPic,
    required this.text,
  });
}
