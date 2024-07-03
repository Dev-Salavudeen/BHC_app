import 'package:flutter/material.dart';
class DetailPage extends StatelessWidget {
  final int index;

  DetailPage({required this.index});

  final List<List<String>> detailImageUrls = [
    [
      'assets/distributionboard.png',
      'assets/sockets.png',
      'assets/lights.png',
      'assets/geyser.png',
    ],
    [
      'assets/garage.png',
      'assets/windows.png',
      'assets/doors.png',
      'assets/kitchen.png',
      'assets/bath.png',
      'assets/ceiling.png',
      'assets/roofs.png',
      'assets/weilding.png',
      'assets/glazing.png',
      'assets/painting.png',


    ],
    [
      'assets/shower.png',
      'assets/gutters.png',
      'assets/gully.png',
      'assets/kitchensink.png',
      'assets/washbasin.png',
      'assets/bathtub.png',
      'assets/toilet.png',
      'assets/geyserleak.png',
      'assets/pipes.png',

    ],
    [
      'assets/walls.png',
      'assets/floors.png',

    ],
    [
      'assets/fence.png',
      'assets/sewagesystem.png',
      'assets/watersupply.png',
      'assets/paving.png',
      'assets/waterdrainage.png',

    ],
    [
      'assets/ac.png',
      'assets/generators.png',

    ],
  ];

  final List<List<String>> detailText = [
    ['Distribution\nBoard', 'Socket', 'Lights', 'Geyser'],
    [
      'Garage',
      'Windows &\nframes',
      'Doors &\nframes',
      'Kitchen',
      'Bath',
      'Ceiling',
      'Roofs',
      'Welding',
      'Glazing',
      'Painting',
    ],
    [
      'Shower',
      'Gutters',
      'Gully',
      'Kitchen\nsink',
      'Wash basin',
      'Bathtub',
      'Toilet',
      'Geyser leak',
      'Pipes',
    ],
    [
      'Walls',
      'Floors',
    ],
    ['Fence', 'Sewage\nsystem', 'Water\nsupply', 'Paving', 'Water\nDrainage'],
    [
      'Air\nConditioners',
      'Generators',
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFAD2524),
        title: Text(
          'Detail Page ${index + 1}',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: 500,
          width: 400,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 35.0,
              mainAxisSpacing: 20.0,
              childAspectRatio: 0.5,
            ),
            itemCount: detailImageUrls[index].length,
            // Number of items in the grid
            itemBuilder: (context, detailIndex) {
              return GestureDetector(
                onTap: () =>
                    _showPopup(context, detailText[index][detailIndex]),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset:
                            Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(7),
                        child: Image.asset(
                          detailImageUrls[index][detailIndex],
                          height: 30,
                          width: 30,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        detailText[index][detailIndex],
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xFF515050),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void _showPopup(BuildContext context, String title) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Request A Service'),
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.clear,
                  size: 20,
                ),
              ),
            ],
          ),
          content: Container(
            width: 400,
            height: 300,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 8,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(7),
                              child: Image.asset(
                                'assets/Error.png',
                                height: 30,
                                width: 30,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 7),
                            child: Text('Faults'),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 8,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(7),
                              child: Image.asset(
                                'assets/Questions.png',
                                height: 30,
                                width: 30,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 7),
                            child: Text('Enquiry'),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 8,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(7),
                              child: Image.asset(
                                'assets/Complaint.png',
                                height: 30,
                                width: 30,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 7),
                            child: Text('Complain'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10, bottom: 20),
                  child: Container(
                    height: 110,
                    width: 311,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      maxLines: null,
                      decoration: InputDecoration(
                        hintText: 'Description',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 311,
                  height: 44,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFAD2524),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Send',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
