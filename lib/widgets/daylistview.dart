import 'package:flutter/material.dart';

import 'daylistviewdesign.dart';

class DaysListView extends StatefulWidget {
  final String text1;
  const DaysListView({
    super.key,
    required this.text1,
  });

  @override
  State<DaysListView> createState() => _DaysListViewState();
}

class _DaysListViewState extends State<DaysListView> {
  List<String> allListText = [
    'Yesterday',
    'Last 3 days',
    'Last week',
    'Last month',
    'Last year',
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
          height: 40,
          color: Colors.white,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: allListText.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return DaysListViewdesign(
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