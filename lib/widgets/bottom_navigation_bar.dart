/*
import 'package:flutter/material.dart';

class BottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavigationBar({super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
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
          _buildNavItem(icon: Icons.home_outlined, label: 'Home', index: 0),
          _buildNavItem(icon: Icons.assignment_outlined, label: 'Request', index: 1),
          _buildNavItem(icon: Icons.favorite_border, label: 'Favourite', index: 2),
          _buildNavItem(icon: Icons.person_outlined, label: 'Profile', index: 3),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required IconData icon,
    required String label,
    required int index,
  }) {
    bool isActive = currentIndex == index;

    return GestureDetector(
      onTap: () => widget.onTap(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: isActive ? Colors.red.shade800 : Colors.grey, size: 30,),
          if (isActive)
            Container(
              margin: const EdgeInsets.only(top: 4),
              height: 4,
              width: 10,
              color: Colors.red.shade800,
            ),
          if (!isActive)
            Text(
              label,
              style: TextStyle(color: Colors.grey),
            ),
        ],
      ),
    );
  }
}
*/
