import 'package:flutter/material.dart';

class ToggleButtonOne extends StatefulWidget {
  final String text1;
  final String text2;
  const ToggleButtonOne({
    super.key,
    required this.text1,
    required this.text2,
  });
  @override
  _ToggleButtonOneState createState() => _ToggleButtonOneState();
}

class _ToggleButtonOneState extends State<ToggleButtonOne> {
  List<bool> isSelected = [true, false];

  void toggleSelection(int index) {
    setState(() {
      isSelected = [false, false];
      isSelected[index] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 35),
      child: Container(
        height: 40,
        width: 343,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black26),
        ),
        child: ToggleButtons(
          isSelected: isSelected,
          onPressed: (index) {
            toggleSelection(index);
          },
          selectedColor: Colors.white,
          color:  Color(0xFFABA0A0),
          fillColor: Color(0xFFAD2524),
          borderColor: Colors.white,
          selectedBorderColor: Colors.white,
          borderRadius: BorderRadius.circular(10),
          children: [
            Container(
              height: 34,
              width: 168,
              child: Center(
                child: Text(
                  widget.text1,
                  style: TextStyle(fontSize: 14),

                ),
              ),
            ),
            Container(
              height: 34,
              width: 168,
              child: Center(
                child: Text(
                  widget.text2,
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
