import 'package:bhc_app/themes/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CashPageView extends StatefulWidget {
  const CashPageView({super.key});

  @override
  State<CashPageView> createState() => _CashPageViewState();
}

class _CashPageViewState extends State<CashPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(right: 15.0, top: 15.0, left: 15.0),
              child: Text(
                "Verify using Card",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 1,
              height: 200.0,
              enableInfiniteScroll: false,
              enlargeCenterPage: true,
            ),
            items: [
              Image.asset(
                'assets/Group64.png',
                height: 300,
                width: 300,
              ),
              Image.asset(
                'assets/Group64.png',
                height: 300,
                width: 300,
              ),
            ],
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(right: 15.0, top: 15.0, left: 15.0),
              child: Text(
                "+ Add new card",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PaymentGatewayPageView extends StatefulWidget {
  const PaymentGatewayPageView({super.key});

  @override
  State<PaymentGatewayPageView> createState() => _PaymentGatewayPageViewState();
}

class _PaymentGatewayPageViewState extends State<PaymentGatewayPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 15.0),
        child: Align(
          alignment: Alignment.topCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                "assets/image42.png",
                scale: 4,
              ),
              Image.asset(
                "assets/image43.png",
                scale: 4,
              ),
              Image.asset(
                "assets/Vector.png",
                scale: 4,
              ),
              Image.asset(
                "assets/image45.png",
                scale: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

