import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttontext;
  final VoidCallback onPressed;
  final Color buttoncolor;

  const CustomButton(
      {super.key,
      required this.buttontext,
      required this.onPressed,
      required this.buttoncolor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          width: 400,
          decoration: BoxDecoration(
            color: buttoncolor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                buttontext,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
