import 'package:bhc_app/themes/colors.dart';
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
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Container(
            height: 30,
            width: 92,
            decoration: BoxDecoration(
              color:
              isPendingSelected ? ThemeColor.pendingButton : Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: ThemeColor.pendingButton),
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
          const SizedBox(width: 10),
          Container(
            height: 30,
            width: 92,
            decoration: BoxDecoration(
              color: isCancelSelected ? ThemeColor.apptheame : Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: isPendingSelected
                      ? ThemeColor.apptheame
                      : ThemeColor.apptheame),
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
                  color: isCancelSelected ? Colors.white : ThemeColor.apptheame,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
