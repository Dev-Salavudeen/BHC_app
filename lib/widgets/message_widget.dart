import 'package:flutter/material.dart';

import '../views/message_view.dart';
class MessageWidget extends StatelessWidget {
  final Message message;
  final bool isSentByMe;

  MessageWidget({
    required this.message,
    required this.isSentByMe,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSentByMe ? Alignment.bottomRight : Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (!isSentByMe)
              CircleAvatar(
                backgroundImage: NetworkImage(message.senderPic),
                radius: 20,
              ),
            SizedBox(width: 8.0),
            Column(
              crossAxisAlignment:
              isSentByMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              children: [
                if (message.text.isNotEmpty)
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.75,
                    ),
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: isSentByMe ? Color(0xFFAD2524) : Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 8,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Text(
                      message.text,
                      style: TextStyle(
                        color: isSentByMe ? Colors.white : Color(0xFF989696),
                        fontSize: 16,
                      ),
                    ),
                  ),
              ],
            ),
            if (isSentByMe) SizedBox(width: 8.0),
            if (isSentByMe)
              CircleAvatar(
                backgroundImage: NetworkImage(message.senderPic),
                radius: 20,
              ),
          ],
        ),
      ),
    );
  }
}