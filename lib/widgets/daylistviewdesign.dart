import 'package:flutter/material.dart';


class DaysListViewdesign extends StatefulWidget {
  final String allText;
  final bool isSelected;
  final VoidCallback onTap;

  const DaysListViewdesign({
    super.key,
    required this.allText,
    required this.isSelected,
    required this.onTap,
  });

  @override
  State<DaysListViewdesign> createState() => _DaysListViewdesignState();
}

class _DaysListViewdesignState extends State<DaysListViewdesign> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Padding(
        padding: EdgeInsets.only(right: 15, top: 2, bottom: 2),
        child: Container(
          height: 30,
          width: 92,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: widget.isSelected ? Colors.red.shade900 :Color(0xFFFAFAFA),
            border: Border.all(color: Colors.black12),
          ),
          child: Center(
            child: Text(
              widget.allText,
              style: TextStyle(
                color: widget.isSelected ? Colors.white : Color(0xFF515050),
                fontSize: 12,fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}