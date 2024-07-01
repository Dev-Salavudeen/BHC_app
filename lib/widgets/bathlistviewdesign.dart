import 'package:flutter/material.dart';

class BathListViewDesign extends StatefulWidget {
  final String allText;
  final bool isSelected;
  final VoidCallback onTap;

  const BathListViewDesign({
    super.key,
    required this.allText,
    required this.isSelected,
    required this.onTap,
  });

  @override
  State<BathListViewDesign> createState() => _BathListViewDesignState();
}

class _BathListViewDesignState extends State<BathListViewDesign> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Padding(
        padding: EdgeInsets.only(top: 2, bottom: 2, left: 1, right: 15),
        child: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: widget.isSelected ? Colors.red.shade900 : Color(0xFFFAFAFA),
            border: Border.all(color: Colors.black12),
          ),
          child: Center(
            child: Text(
              widget.allText,
              style: TextStyle(
                color: widget.isSelected ? Colors.white : Colors.black,
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

