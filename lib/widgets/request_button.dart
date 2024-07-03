import 'package:flutter/material.dart';

class ElevatedButtonOne extends StatefulWidget {
  const ElevatedButtonOne({super.key});

  @override
  State<ElevatedButtonOne> createState() => _ElevatedButtonOneState();
}

class _ElevatedButtonOneState extends State<ElevatedButtonOne> {
  bool isPendingSelected = true;
  bool isCancelSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Container(
            height: 35,
            width: 100,
            decoration: BoxDecoration(
              color: isPendingSelected ? Colors.orange : Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                setState(() {
                  isPendingSelected = true;
                  isCancelSelected = false;
                });
              },
              child: Text(
                "Pending",
                style: TextStyle(
                  color: isPendingSelected ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(width: 10), // Add some space between the buttons
          Container(
            height: 35,
            width: 100,
            decoration: BoxDecoration(
              color: isCancelSelected ? Colors.orange : Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                setState(() {
                  isPendingSelected = false;
                  isCancelSelected = true;
                });
              },
              child: Text(
                "Cancel",
                style: TextStyle(
                  color: isCancelSelected ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}