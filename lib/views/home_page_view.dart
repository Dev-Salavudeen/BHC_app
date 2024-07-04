
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widgets/custom_home_grid.dart';
import '../widgets/custom_home_list.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final imagepath = [
    Image.asset(
      'assets/advertisement.png',
      width: 500,
      fit: BoxFit.cover,
    ),
    Image.asset('assets/advertisement.png', width: 500, fit: BoxFit.cover),
    Image.asset(
      'assets/advertisement.png',
      width: 500,
      fit: BoxFit.cover,
    ),
  ];
  int currentindex = 0;
  bool _isListView = true;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFAD2524),
          title: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "current location",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                        Text(
                          "Maruapula, Gaborone",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {

                          },
                          icon: Icon(Icons.notifications_none_sharp),
                        ),
                        SizedBox(width: 15),
                        IconButton(
                          onPressed: () {
                            context.go('/message_home_view');


                          },
                          icon: Icon(
                            Icons.message_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        body: CustomScrollView(

          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Stack(children: [
                    Container(
                      width: double.infinity,
                      height: 270,
                      color: Color(0xFFAD2524),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 20),
                            child: Container(
                              height: 34,
                              width: 262,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 7,
                                    offset: Offset(0, 3),
                                  ),
                                ],

                                color: Colors.white,
                              ),
                              child: TabBar(
                                onTap: (index) {
                                  setState(() {
                                    _isListView = index == 0;
                                  });
                                },
                                dividerHeight: 0,
                                splashFactory: NoSplash.splashFactory,
                                indicatorSize: TabBarIndicatorSize.tab,
                                indicator: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.red[800],
                                ),
                                labelColor: Colors.white,
                                tabs: [
                                  Tab(
                                    child: Text("Provider"),
                                  ),
                                  Tab(
                                    child: Text("Service"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 343,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: CarouselSlider(
                                items: imagepath,
                                options: CarouselOptions(
                                  autoPlay: true,
                                  autoPlayAnimationDuration:
                                  Duration(seconds: 2),
                                  autoPlayInterval: Duration(seconds: 3),
                                  viewportFraction: 1.1,
                                  initialPage: currentindex,
                                  onPageChanged: (value, reason) {
                                    setState(() {
                                      currentindex = value;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: AnimatedSmoothIndicator(
                              activeIndex: currentindex,
                              count: imagepath.length,
                              effect: WormEffect(
                                dotHeight: 8,
                                dotWidth: 8,
                                spacing: 8,
                                dotColor: Colors.grey,
                                activeDotColor: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Stack(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 245),
                          child: Container(
                            height: 48,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xFFF4F4F4),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(
                                    color: Color(
                                        0xFFF4F4F4), // Default border color
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(
                                    color: Color(0xFFF4F4F4),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(
                                    color: Colors
                                        .white, // Border color when the TextFormField is focused
                                  ),
                                ),
                                prefixIcon: Icon(Icons.search_outlined),
                                hintText: 'Search',
                                hintStyle: TextStyle(color: Colors.grey),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    context.go('/rent_filter_view');
                                  },
                                  icon: Icon(Icons.filter_list_alt),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ]),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(

                  'Popular near by',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SliverFillRemaining(
              child:
              _isListView ? ListViewPage(itemcount: 3) : CustomGridView(),
            ),
          ],
        ),
      ),
    );
  }
}