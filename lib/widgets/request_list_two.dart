import 'package:bhc_app/widgets/request_button.dart';
import 'package:flutter/material.dart';

class SecondList extends StatefulWidget {
  final String Text;
  final String Text1;
  final IconData icon;
  final String imagepath;
  const SecondList({
    super.key,
    required this.Text,
    required this.Text1,
    required this.icon,
    required this.imagepath,
    required String text,
  });

  @override
  State<SecondList> createState() => _SecondListState();
}

class _SecondListState extends State<SecondList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 20),
      child: Container(
        height: 135,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 8,
                spreadRadius: 3,
                offset: const Offset(0, 2),
              ),
            ]),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueAccent,
                    image: DecorationImage(
                        image: AssetImage(widget.imagepath),
                        fit: BoxFit.cover)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.Text,
                    style: const TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Row(
                      children: [
                        Icon(
                          widget.icon,
                          color: Colors.grey,
                        ),
                        Text(
                          widget.Text1,
                          style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  const ElevatedButtonOne(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}