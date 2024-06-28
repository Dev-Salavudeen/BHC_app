import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final double width;

  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: 50,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.red.shade800, // Background color
          borderRadius: BorderRadius.circular(15.0), // Rounded edges
          boxShadow: [],
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              color: Colors.white, // Text color
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
