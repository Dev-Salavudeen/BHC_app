import 'package:flutter/material.dart';

class FirstList extends StatefulWidget {
  final String Text;
  final bool isSelected;
  final VoidCallback onTap;
  const FirstList({
    super.key,
    required this.Text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  State<FirstList> createState() => _FirstListState();
}

class _FirstListState extends State<FirstList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Container(
          height: 40,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: widget.isSelected ? Colors.red.shade900 : Colors.white,
              border: Border.all(color: Colors.grey.shade300,)
          ),
          child: Center(
              child: Text(
                widget.Text,
                style: TextStyle(
                  color: widget.isSelected ? Colors.white : Colors.grey,
                ),
              )),
        ),
      ),
    );
  }
}