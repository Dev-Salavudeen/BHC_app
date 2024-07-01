import 'package:flutter/material.dart';

import 'bedlistviewdesign.dart';

class BedRoomList extends StatefulWidget {
  final String text1;
  const BedRoomList({
    super.key,
    required this.text1,
  });

  @override
  State<BedRoomList> createState() => _BedRoomListState();
}

class _BedRoomListState extends State<BedRoomList> {
  List<String> allListText = [
    '1',
    '2',
    '3',
    '4',
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double swidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10, bottom: 20),
          child: Text(
            widget.text1,
            style: TextStyle(
              color:Color(0xFF515050),
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          width: swidth,
          height: 45,
          color: Colors.white,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: allListText.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return BedListViewDesign(
                allText: allListText[index],
                isSelected: selectedIndex == index,
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              );
            },
          ),
        ),
      ],
    );
  }
}