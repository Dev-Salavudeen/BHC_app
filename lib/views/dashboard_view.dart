import 'package:bhc_app/views/my_request_view.dart';
import 'package:bhc_app/views/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../themes/colors.dart';
import 'home_page_view.dart';
import 'favourite_view.dart';

enum DashboardTab { home, myRequest, myFavourite, profile }

class DashboardView extends StatefulWidget {
  final DashboardTab tab;
  const DashboardView({
    super.key,
    this.tab = DashboardTab.home,
  });

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  late final PageController pageController;
  DashboardTab currentTab = DashboardTab.home;

  @override
  void initState() {
    super.initState();
    currentTab = widget.tab;
    pageController = PageController(
      initialPage: currentTab.index,
      keepPage: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (currentTab == DashboardTab.home) {
          SystemNavigator.pop();
          return false;
        } else {
          setState(() {
            currentTab = DashboardTab.home;
            pageController.jumpToPage(currentTab.index);
          });
        }
        return false;
      },
      child: Scaffold(
        body: PageView(
          controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            HomeView(),
            MyRequestView(),
            FavouriteView(),
            ProfileView()
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.red.shade800,
          currentIndex: currentTab.index,
          backgroundColor: ThemeColor.white,
          showUnselectedLabels: true,
          showSelectedLabels: false,
          type: BottomNavigationBarType.fixed,
          onTap: _onTabChanged,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              activeIcon: Icon(Icons.home_filled),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_time_outlined),
              activeIcon: Icon(Icons.access_alarm_sharp),
              label: "My request",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              activeIcon: Icon(Icons.favorite),
              label: "Favourite",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_rounded),
              activeIcon: Icon(Icons.person_rounded),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }

  void _onTabChanged(int index) {
    setState(() {
      currentTab = DashboardTab.values.elementAt(index);
      pageController.jumpToPage(currentTab.index);
    });
  }
}
