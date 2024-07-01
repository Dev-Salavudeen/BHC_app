import 'package:flutter/material.dart';

class CustomContainer extends StatefulWidget {
  final double height;
  final double width;
  final String text;
  const CustomContainer(
      {super.key,
        required this.height,
        required this.width,
        required this.text});

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return
      Center(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Container(
                height: widget.height,
                width: 315,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(15)),
                child: IconButton(onPressed: (){},icon: Icon(Icons.file_upload_outlined,color: Colors.grey,),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 20),
              child: Container(
                height: 20,
                width: widget.width,
                child: Center(
                  child: Text(
                    widget.text,
                    style: TextStyle(color: Colors.grey,fontSize: 12),
                  ),
                ),
                color: Colors.white,
              ),
            )
          ],
        ),

      );
  }
}