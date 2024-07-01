import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomToggleButton extends StatefulWidget {
  final List<bool> isSelected;
  final void Function(int) onPressed;

  const CustomToggleButton({
    Key? key,
    required this.isSelected,
    required this.onPressed,
  }) : super(key: key);

  @override
  _CustomToggleButtonState createState() => _CustomToggleButtonState();
}

class _CustomToggleButtonState extends State<CustomToggleButton> {
  late List<bool> _currentSelection;

  @override
  void initState() {
    super.initState();
    _currentSelection = List.from(widget.isSelected);
  }

  void _onPressed(int index) {
    setState(() {
      for (int buttonIndex = 0; buttonIndex < _currentSelection.length; buttonIndex++) {
        _currentSelection[buttonIndex] = buttonIndex == index;
      }
      widget.onPressed(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34,
      width: 262,
      decoration: BoxDecoration(
        color: Color(0xFFF4F4F4),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () => _onPressed(0),
            child: Container(
              height: 28,
              width: 128,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: _currentSelection[0] ? Color(0xFFAD2524) : Color(0xFFF4F4F4),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 37,top: 3),
                child: Text(
                  'Property',
                  style: TextStyle(
                    color: _currentSelection[0] ? Colors.white : Colors.black,
                    fontSize: 14,

                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => _onPressed(1),
            child: Container(
              height: 28,
              width: 128,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: _currentSelection[1] ? Color(0xFFAD2524) : Color(0xFFF4F4F4),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 37,top: 3),
                child: Text(
                  'Services',
                  style: TextStyle(
                    color: _currentSelection[1] ? Colors.white : Colors.black,
                    fontSize: 14,

                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Example usage
