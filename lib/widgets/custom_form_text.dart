import 'package:flutter/material.dart';

class CustomText extends StatefulWidget {

  final String text;
  final double size;
  final Color color;
  final FontWeight weight;

  const CustomText({super.key, required this.text, required this.size, required this.color, required this.weight});

  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.text,style: TextStyle(color: widget.color,
        fontSize: widget.size,fontWeight: widget.weight),);
  }
}
