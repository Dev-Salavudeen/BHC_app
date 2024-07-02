import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class CustomFilterList extends StatelessWidget {
  CustomFilterList({super.key});

  final List<String> _imagePaths = [
    'assets/SukhumvitHouse.png',
    'assets/tylos_apartment.png',

  ];

  final List<String> _text = [
    'Hi-Life Luxury Apartment',
    'Tylo Apartment',

  ];

  final List<String> _text2 = [
    'P.3000',
    'P.3500',
    'P.3000',
    'P.3000',
  ];

  final List<String> _text3 = [
    'Glen Vally, Gaborone',
    'Maruapula Gaborone',

  ];

  final List<String> _text4 = [
    'per month',
    'per month',

  ];

  final List<String> _text5 = [
    '4.5',
    '4.5',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
        itemCount: _imagePaths.length,
        itemBuilder: (context, index) {
          return Container(
            height: 312,
            width: 323,
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFFF4F4F4),
            ),
            child: Column(
              children: [
                GestureDetector(
                  onTap: (){
                    context.go('/home_details_view');

                  },
                  child: Container(
                    height: 170,
                    width: 365,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(_imagePaths[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          right: 10,
                          top: 10,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color(0xFFFFFFFF),
                            ),
                            height: 32,
                            width: 32,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.favorite_border, size: 17),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 15),
                  child: Row(
                    children: [
                      Text(
                        _text[index],
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold
                        ),
                      ),

                      Spacer(),


                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Text(
                          _text2[index],
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFAD2524),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        size: 15,
                        color: Color(0xFFABA0A0),
                      ),
                      Text(
                        _text3[index],
                        style: const TextStyle(
                          fontSize: 12,
                          color: Color(0xFFABA0A0),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Text(
                          _text4[index],
                          style: const TextStyle(
                            fontSize: 10,
                            color: Color(0xFFAD2524),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 16),
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 88,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xFFF7E9E9),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 17),
                          child: Row(
                            children: [
                              Icon(
                                Icons.bed_outlined,
                                color: Color(0xFFAD2524),
                              ),
                              Text(
                                ' 1 Bed',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFFAD2524),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        height: 30,
                        width: 115,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xFFF7E9E9),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              Icon(
                                Icons.bathtub_outlined,
                                color: Color(0xFFAD2524),
                              ),
                              Text(
                                '1 Bathroom',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFFAD2524),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          height: 30,
                          width: 63,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey.shade200),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Color(0xFFFFC700),
                                  size: 16,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    '4.5',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
