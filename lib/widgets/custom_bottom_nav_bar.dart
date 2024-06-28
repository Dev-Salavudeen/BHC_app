import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.currentIndex,
      onTap: widget.onTap,
      selectedItemColor: Colors.red.shade800,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      items: [
        _buildBottomNavigationBarItem(
            icon: Icons.home, label: 'Home', index: 0),
        _buildBottomNavigationBarItem(
            icon: Icons.book_outlined, label: 'Search', index: 1),
        _buildBottomNavigationBarItem(
            icon: Icons.favorite_border, label: 'Favourite', index: 2),
        _buildBottomNavigationBarItem(
            icon: Icons.person_2_outlined, label: 'Profile', index: 3),
      ],
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem({
    required IconData icon,
    required String label,
    required int index,
  }) {
    bool isActive = widget.currentIndex == index;

    return BottomNavigationBarItem(
      icon: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: isActive ? Colors.red.shade800 : Colors.grey,
            size: 30,
          ),
          if (isActive)
            Container(
              margin: const EdgeInsets.only(top: 4),
              height: 4,
              width: 10,
              color: Colors.red.shade800,
            ),
        ],
      ),
      label: isActive ? '' : label,
    );
  }
}
