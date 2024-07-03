import 'package:bhc_app/widgets/request_button.dart';
import 'package:flutter/material.dart';

class SecondList extends StatefulWidget {
  final String Text;
  final String Text1;
  final IconData icon;
  final String imagepath;
  const SecondList(
      {super.key,
        required this.Text,
        required this.Text1,
        required this.icon,
        required this.imagepath,
        required String text, });

  @override
  State<SecondList> createState() => _SecondListState();
}

class _SecondListState extends State<SecondList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 20),
      child: Container(
        height: 160,
        width: 370,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 8,
                spreadRadius: 3,
                offset: Offset(0, 2),
              ),
            ]),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueAccent,
                    image: DecorationImage(
                        image: AssetImage(widget.imagepath),
                        fit: BoxFit.cover)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.Text,
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Icon(
                          widget.icon,
                          color: Colors.grey,
                        ),
                        Text(
                          widget.Text1,
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  ElevatedButtonOne(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}