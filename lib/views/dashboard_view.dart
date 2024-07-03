import 'package:bhc_app/views/profile_view.dart';
import 'package:bhc_app/views/request_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../themes/colors.dart';
import '../widgets/bottom_nav_bar.dart';
import 'favourite_view.dart';
import 'home_page_view.dart';

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
            RequestPage(),
            FavouriteView(),
            ProfileView()
          ],
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: ThemeColor.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNavBarItem(
                icon: Icons.home_outlined,
                activeIcon: Icons.home_outlined,
                label: "Home",
                isActive: currentTab == DashboardTab.home,
                onTap: () => _onTabChanged(0),
              ),
              CustomBottomNavBarItem(
                icon: Icons.request_page,
                activeIcon: Icons.request_page,
                label: "Request",
                isActive: currentTab == DashboardTab.myRequest,
                onTap: () => _onTabChanged(1),
              ),
              CustomBottomNavBarItem(
                icon: Icons.favorite_border,
                activeIcon: Icons.favorite_border,
                label: "Favourite",
                isActive: currentTab == DashboardTab.myFavourite,
                onTap: () => _onTabChanged(2),
              ),
              CustomBottomNavBarItem(
                icon: Icons.person_outline_rounded,
                activeIcon: Icons.person_outline_rounded,
                label: "Profile",
                isActive: currentTab == DashboardTab.profile,
                onTap: () => _onTabChanged(3),
              ),
            ],
          ),
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