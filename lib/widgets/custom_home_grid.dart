import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  final List<String> imageUrls = [
    'assets/Electrical.png',
    'assets/Carpentry.png',
    'assets/Plumbing.png',
    'assets/Masonry.png',
    'assets/External.png',
    'assets/Mechanical.png',
  ];
  final List<String> text = [
    'Electrical',
    'Carpentry',
    'Plumbing',
    'Masonry',
    'External',
    'Mechanical',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 340,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 30.0,
          mainAxisSpacing: 30.0,
        ),
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 50,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white
                ),

                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Image.asset(
                        imageUrls[index],
                        height: 30,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(text[index],
                  style: TextStyle(fontSize: 10),

                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
