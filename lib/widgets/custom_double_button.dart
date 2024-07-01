import 'package:flutter/material.dart';

class CustomButton2 extends StatelessWidget {
  final VoidCallback onPressed1;
  final String buttonText1;
  final String buttonText2;
  final VoidCallback onPressed2;

  const CustomButton2({
    Key? key,
    required this.onPressed1, required this.buttonText1, required this.buttonText2, required this.onPressed2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: GestureDetector(
            onTap: onPressed1,
            child: Container(
              height: 50,
              width: 155,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.red.shade900)

              ),
              child: Center(
                child: Text(
                  buttonText1,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.red[900],
                    fontFamily: "Amazon Ember",
                  ),
                ),
              ),
              margin:  EdgeInsets.all(3),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: GestureDetector(
            onTap: onPressed2,
            child: Container(
              height: 50,
              width: 155,
              decoration: BoxDecoration(
                color: Colors.red[900],
                borderRadius: BorderRadius.circular(15.0),

              ),
              child: Center(
                child: Text(
                  buttonText2,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontFamily: "Amazon Ember",
                  ),
                ),
              ),
              margin:  EdgeInsets.all(3),
            ),
          ),
        ),
      ],
    );
  }
}