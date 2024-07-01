import 'package:flutter/material.dart';

class BedListDesign extends StatefulWidget {
  final String allText;
  final bool isSelected;
  final VoidCallback onTap;

  const BedListDesign({
    super.key,
    required this.allText,
    required this.isSelected,
    required this.onTap,
  });

  @override
  State<BedListDesign> createState() => _BedListDesignState();
}

class _BedListDesignState extends State<BedListDesign> {
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
            borderRadius: BorderRadius.circular(5),
            color: widget.isSelected ? Colors.red.shade900 :  Color(0xFFFAFAFA),
            border: Border.all(color:   Color(0xFFEAEAEA)),
          ),
          child: Center(
            child: Text(
              widget.allText,
              style: TextStyle(
                color: widget.isSelected ? Colors.white : Color(0xFF515050),
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ),
    );
  }
}