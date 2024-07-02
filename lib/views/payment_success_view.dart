import 'package:flutter/material.dart';


class PaymentDoneView extends StatefulWidget {
  const PaymentDoneView({super.key});

  @override
  State<PaymentDoneView> createState() => _PaymentDoneViewState();
}

class _PaymentDoneViewState extends State<PaymentDoneView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade900,
      body: Center(
          child: Image.asset(
            "assets/Group68.png",
            scale: 4,
          )),
    );
  }
}
