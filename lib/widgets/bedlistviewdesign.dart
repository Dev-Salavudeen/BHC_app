import 'package:flutter/material.dart';

class BedListViewDesign extends StatefulWidget {
  final String allText;
  final bool isSelected;
  final VoidCallback onTap;

  const BedListViewDesign({
    super.key,
    required this.allText,
    required this.isSelected,
    required this.onTap,
  });

  @override
  State<BedListViewDesign> createState() => _BedListViewDesignState();
}

class _BedListViewDesignState extends State<BedListViewDesign> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Padding(
        padding: EdgeInsets.only(top: 2, bottom: 2, left: 1, right: 15),
        child: Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: widget.isSelected ? Colors.red.shade900 : Color(0xFFFAFAFA),
            border: Border.all(color: Colors.black12),
          ),
          child: Center(
            child: Text(
              widget.allText,
              style: TextStyle(
                color: widget.isSelected ? Colors.white :Color(0xFF515050),
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
