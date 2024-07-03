import 'package:flutter/material.dart';
import '../widgets/request_list.dart';
import '../widgets/request_list_two.dart';

class RequestPage extends StatefulWidget {
  const RequestPage({super.key});

  @override
  State<RequestPage> createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  List<String> allStatuses = [
    'All',
    'Pending',
    'Approved',
    'Rejected',
  ];

  List<String> propertyNames = [
    'Sukhumvit House',
    'Sukhumvit House',
    'Sukhumvit House',
  ];

  List<String> locations = [
    'Glen Valley, Gabatone',
    'Glen Valley, Gabatone',
    'Glen Valley, Gabatone',
  ];

  List<String> images = [
    '/pending.png',
    '/approved.png',
    '/rejected.png',
  ];

  String filterStatus = 'All';

  void _setFilterStatus(String status) {
    setState(() {
      filterStatus = status;
    });
  }

  List<int> _getFilteredIndices() {
    if (filterStatus == 'All') {
      return List<int>.generate(propertyNames.length, (index) => index);
    } else if (filterStatus == 'Pending') {
      return [0];
    } else if (filterStatus == 'Approved') {
      return [1];
    } else if (filterStatus == 'Rejected') {
      return [2];
    }

    return [];
  }

  @override
  Widget build(BuildContext context) {
    double swidth = MediaQuery.of(context).size.width;
    List<int> filteredIndices = _getFilteredIndices();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: Text(
          'My Requests',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Stack(children: [
        SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 15, top: 7),
            child: Column(
              children: [
                Container(
                  height: 41,
                  width: swidth,
                  child: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: allStatuses.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return FirstList(
                            Text: allStatuses[index],
                            isSelected: filterStatus == allStatuses[index],
                            onTap: () {
                              _setFilterStatus(allStatuses[index]);
                            },
                          );
                        }),
                  ),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: filteredIndices.length,
                    //  physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      int filteredIndex = filteredIndices[index];
                      return SecondList(
                        text: propertyNames[filteredIndex],
                        Text: locations[filteredIndex],
                        icon: Icons.location_on,
                        imagepath: images[filteredIndex],
                        Text1: locations[filteredIndex],
                      );
                    }),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}