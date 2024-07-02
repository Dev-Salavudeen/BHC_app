import 'package:flutter/material.dart';

class CustomTransactionContainer extends StatefulWidget {
  final String Text1;
  final String Text2;
  final String Text3;
  final String Text4;
  final String Text5;
  final String Text6;
  final String Text7;
  final String Text8;
  final String Text9;
  final String Text10;
  final Color color;
  final VoidCallback Onpressed;

  const CustomTransactionContainer(
      {super.key,
        required this.Text1,
        required this.Text2,
        required this.Text3,
        required this.Text4,
        required this.Text5,
        required this.Text6,
        required this.Text7,
        required this.Text8,
        required this.Text9,
        required this.Text10,
        required this.color,
        required this.Onpressed});

  @override
  State<CustomTransactionContainer> createState() => _CustomTransactionContainerState();
}

class _CustomTransactionContainerState extends State<CustomTransactionContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 18),
      child: Container(
        width: 343,
        height: 318,
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(14.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 14,
              offset: Offset(0, 5), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Transaction ID:',
                        style:
                        TextStyle(color: Color(0xFF8A8A8A), fontSize: 12),
                      ),
                      Text(widget.Text1, style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'To:',
                        style:
                        TextStyle(color: Color(0xFF8A8A8A), fontSize: 12),
                      ),
                      Text(widget.Text2, style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: widget.Onpressed,
                    child: Text(widget.Text10,
                        style: TextStyle(fontSize: 13, color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                        shape: ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        backgroundColor: widget.color),
                  )
                ],
              ),
            ),
            Spacer(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 1,
              color: Color(0xFFECE9E9),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Payment Method',
                        style:
                        TextStyle(color: Color(0xFF8A8A8A), fontSize: 12),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Date',
                        style:
                        TextStyle(color: Color(0xFF8A8A8A), fontSize: 12),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Time',
                        style:
                        TextStyle(color: Color(0xFF8A8A8A), fontSize: 12),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Transaction status',
                        style:
                        TextStyle(color: Color(0xFF8A8A8A), fontSize: 12),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Amount',
                        style:
                        TextStyle(color: Color(0xFF8A8A8A), fontSize: 12),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Tax',
                        style:
                        TextStyle(color: Color(0xFF8A8A8A), fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(width: 75,),
                  // Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start ,
                    children: [
                      Text(
                        widget.Text3,
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        widget.Text4,
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        widget.Text5,
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        widget.Text6,
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        widget.Text7,
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        widget.Text8,
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /*Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Payment Method',
                      style:
                      TextStyle(color: Color(0xFF8A8A8A), fontSize: 12),
                    ),
                    Text(
                      widget.Text3,
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Date',
                      style:
                      TextStyle(color: Color(0xFF8A8A8A), fontSize: 12),
                    ),
                    Text(
                      widget.Text4,
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Time',
                      style:
                      TextStyle(color: Color(0xFF8A8A8A), fontSize: 12),
                    ),
                    Text(
                      widget.Text5,
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Transaction status',
                      style:
                      TextStyle(color: Color(0xFF8A8A8A), fontSize: 12),
                    ),
                    Text(
                      widget.Text6,
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Amount',
                      style:
                      TextStyle(color: Color(0xFF8A8A8A), fontSize: 12),
                    ),
                    Text(
                      widget.Text7,
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Tax',
                      style:
                      TextStyle(color: Color(0xFF8A8A8A), fontSize: 12),
                    ),
                    Text(
                      widget.Text8,
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),*/
            Spacer(),
            Container(
              height: 1,
              width: 300,
              color: Color(0xFFECE9E9),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Total amount',
                        style:
                        TextStyle(color: Color(0xFF8A8A8A), fontSize: 12),
                      )
                    ],
                  ),
                  SizedBox(width: 105,),
                  Text(widget.Text9, style: TextStyle(fontSize: 12))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
