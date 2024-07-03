import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/message_home_list.dart';
class MessageHomeView extends StatefulWidget {
  const MessageHomeView({super.key});

  @override
  State<MessageHomeView> createState() => _MessageHomeViewState();
}

class _MessageHomeViewState extends State<MessageHomeView> {
  final List<String> Allimages = [
    'assets/personOne.png',
    'assets/personTwo.png',
  ];
  final List<String> AllFirstNames = [
    'Ryan',
    'Jonny',
  ];
  final List<String> AllSecondNames = [
    'Lorem ipsum has been the industry.....',
    'Lorem ipsum has been the industry.....',
  ];
  final List<String> AllTime = [
    '02:44 AM',
    '01:04 AM',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
        leading: IconButton(
          onPressed: () {
            context.go('/home_page_view');

          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 19,
          ),
        ),
        title: Padding(
          padding: EdgeInsets.only(right: 20),
          child: Text(
            'Message',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Container(
                height: 40,
                width: 450,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 8,
                          spreadRadius: 2,
                          offset: Offset(0, 2))
                    ]),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Search',
                    labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return MessageListView(
                    text: AllFirstNames[index],
                    text1: AllSecondNames[index],
                    text2: AllTime[index],
                    image: Allimages[index], onPressed: () {
                    context.go('/message_view');

                  },
                  );
                })
          ],
        ),
      ),
    );
  }
}
