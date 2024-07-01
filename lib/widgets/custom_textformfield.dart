import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String lableText;
  final TextInputType keyboardType;
  final Function(String)? onChanged;
  final Color lablecolor;

  const CustomTextFormField({
    Key? key,
    required this.lableText,
    this.keyboardType = TextInputType.text,
    this.onChanged, required this.lablecolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        keyboardType: keyboardType,
        onChanged: onChanged,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: lableText,
          labelStyle: TextStyle(color: lablecolor,fontSize: 12),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(15)
          ),
          // filled: true,
          // fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        ),
      ),
    );
  }
}


