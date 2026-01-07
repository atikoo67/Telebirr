import 'package:flutter/material.dart';
import 'package:telebirr/core/theme/theme.dart';

class CustomBottomNavBar extends StatelessWidget {
  final Function(int) onTap;
  final List<NavItem> navItems;

  const CustomBottomNavBar({required this.onTap, required this.navItems});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: navItems,
        ),
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isActive;
  final VoidCallback onTap;
  final Color? activeColor;
  final Color? inactiveColor;
  final Color? activebackgroundColor;
  final Color? inactivebackgroundColor;

  const NavItem({
    required this.icon,
    required this.label,
    required this.isActive,
    required this.onTap,
    required this.activeColor,
    required this.inactiveColor,
    required this.activebackgroundColor,
    required this.inactivebackgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: isActive ? activebackgroundColor : inactivebackgroundColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              color: isActive
                  ? activeColor ?? theme.colorScheme.secondary
                  : inactiveColor ?? theme.colorScheme.shadow,
              size: 24,
            ),
          ),

          // Text without background
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: isActive
                  ? activeColor ?? theme.colorScheme.secondary
                  : inactiveColor ?? theme.colorScheme.shadow,
              fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
