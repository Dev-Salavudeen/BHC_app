import 'package:flutter/material.dart';
class MessageInputWidget extends StatelessWidget {
  final TextEditingController messageController;
  final VoidCallback onSendMessage;

  MessageInputWidget({
    required this.messageController,
    required this.onSendMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 50,
          width: 500,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            width: 343,
            height: 46,
            decoration: BoxDecoration(
              color: Color(0xFFF8F8F8),
              borderRadius: BorderRadius.circular(12),
            ),
            child: TextField(
              controller: messageController,
              decoration: InputDecoration(
                hintText: 'Type a message',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    color: Colors.grey.shade200,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
              ),
              onSubmitted: (text) => onSendMessage(),
            ),
          ),
        ),
        Positioned(
          left: 282,
          top: 13,
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color(0xFFAD2524),
            ),
            child: IconButton(
              icon: Icon(
                Icons.send,
                color: Colors.white,
              ),
              onPressed: onSendMessage,
            ),
          ),
        ),
        Positioned(
          left: 200,
          top: 20,
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.mic,
              color: Colors.grey,
            ),
          ),
        ),
        Positioned(
          left: 235,
          top: 20,
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.emoji_emotions_outlined,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
