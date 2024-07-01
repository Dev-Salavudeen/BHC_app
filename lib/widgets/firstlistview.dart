import 'package:flutter/material.dart';

import 'bedlistdesign.dart';

class FirstListView extends StatefulWidget {
  final String text1;
  const FirstListView({
    super.key,
    required this.text1,
  });

  @override
  State<FirstListView> createState() => _FirstListViewState();
}

class _FirstListViewState extends State<FirstListView> {
  List<String> allListText = [
    'All',
    'House',
    'Apartment',
    'Building',
    'Rooms',
    'All',
    'House',
    'Apartment',
    'Building',
    'Rooms',
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double swidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 25, bottom: 18),
          child: Text(
            widget.text1,
            style: TextStyle(
              color: Color(0xFF515050),
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          width: swidth,
          height: 37,
          color: Colors.white,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: allListText.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return BedListDesign(
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
