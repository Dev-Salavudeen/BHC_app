import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/bathroomlist.dart';
import '../widgets/bedroomlist.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_filter_toggle.dart';
import '../widgets/custom_indicator.dart';
import '../widgets/daylistview.dart';
import '../widgets/firstlistview.dart';

class RentFilter extends StatefulWidget {
  const RentFilter({super.key});

  @override
  State<RentFilter> createState() => _HomePageState();
}

class _HomePageState extends State<RentFilter> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
        leading: IconButton(
          onPressed: () {
            context.go('/home_page_view');
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 28,
          ),
        ),
        title: Text(
          "Filter",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 45),
                child: ToggleButtonOne(
                  text1: 'Rent',
                  text2: 'Buy',
                ),
              ),
              FirstListView(
                text1: 'Property Type',
              ),
              IndicatorCode(
                text1: 'Price Monthly',
              ),
              BedRoomList(
                text1: 'Bedrooms',
              ),
              BathRoomList(
                text1: 'Bathrooms',
              ),
              DaysListView(
                text1: 'Added',
              ),
              CustomElevatedButton(
                onPressed: () {
                  context.go('/filter_view');


                },
                buttonText: "Apply Filter",
                width: screenWidth,
              ),
            ],
          ),
        ),
      ),
    );
  }
}