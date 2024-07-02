import 'package:flutter/material.dart';

class CustomToggleButton extends StatefulWidget {
  @override
  _CustomToggleButtonState createState() => _CustomToggleButtonState();
}

class _CustomToggleButtonState extends State<CustomToggleButton> {
  List<bool> isSelected = [true, false];

  void toggleSelection(int index) {
    setState(() {
      isSelected = [false, false];
      isSelected[index] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return
      Center(
        child: Container(
          height: 46,
          width: 123,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            color: Colors.white,
          ),
          child: ToggleButtons(
            isSelected: isSelected,
            onPressed: (index) {
              toggleSelection(index);
            },
            selectedColor: Colors.white,
            color: Colors.red.shade900,
            fillColor: Colors.red.shade900,
            borderColor: Colors.red.shade900,
            selectedBorderColor: Colors.red.shade900,
            borderRadius: BorderRadius.circular(10),
            children: [
              Container(height: 46,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Village',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ),
              Container(
                height: 46,
                width: 60,
                child: Center(
                  child: Text(
                    'Town',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}