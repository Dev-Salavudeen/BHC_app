import 'package:flutter/material.dart';

class MessageListView extends StatefulWidget {
  final String text;
  final String text1;
  final String text2;
  final String image;
  final VoidCallback onPressed;

  const MessageListView({
    super.key,
    required this.text,
    required this.text1,
    required this.text2,
    required this.image,
    required this.onPressed,
  });

  @override
  State<MessageListView> createState() => _MessageListViewState();
}

class _MessageListViewState extends State<MessageListView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        height: 80,
        width: 800,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey, // Border color
              width: 0.3, // Border width
            ),
          ),
          // color: Colors.blueAccent,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black,
                    image: DecorationImage(
                        image: AssetImage(widget.image), fit: BoxFit.cover)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.text,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 5),
                  Text(
                    widget.text1,
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 42, left: 10),
              child: Text(
                widget.text2,
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            )
          ],
        ),
      ),
    );
  }
}