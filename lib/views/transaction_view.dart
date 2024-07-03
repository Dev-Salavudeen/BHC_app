import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/custom_transaction_page.dart';


class TransactionPage extends StatefulWidget {
  const TransactionPage({super.key});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFAD2524),
        leading: IconButton(
            onPressed: () {
              context.go('/profile_view');

            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Color(0xFFFFFFFF),
            )),
        title: Text(
          'Transaction',
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Color(0xFFFFFFFF)),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none_outlined,
              color: Color(0xFFFFFFFF),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          CustomTransactionContainer(
            Text1: '#123456789QWER',
            Text2: 'Mark Antony',
            Text3: 'Credit card',
            Text4: '24th June 2024',
            Text5: '3:03PM',
            Text6: 'Paid',
            Text7: 'P.1,20,000',
            Text8: 'P.10,000',
            Text9: 'P.1,30,000',
            Text10: 'Buy',
            color: Colors.blue,
            Onpressed: () {},
          ),
          CustomTransactionContainer(
            Text1: '#123451234QWER',
            Text2: 'John',
            Text3: 'Debit card',
            Text4: '23th June 2024',
            Text5: '4:05 PM',
            Text6: 'Paid',
            Text7: 'P.7,000',
            Text8: 'P.700',
            Text9: 'P.7,700',
            Text10: 'Rent',
            color: Color(0xFFB04AFF),
            Onpressed: () {},
          ),
        ],
      ),
    );
  }
}
