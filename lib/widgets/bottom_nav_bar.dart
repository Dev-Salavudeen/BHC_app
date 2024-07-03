
import 'package:flutter/material.dart';

class CustomBottomNavBarItem extends StatelessWidget {
  final IconData icon;
  final IconData activeIcon;
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  const CustomBottomNavBarItem({
    Key? key,
    required this.icon,
    required this.activeIcon,
    required this.label,
    required this.isActive,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            isActive ? activeIcon : icon,
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