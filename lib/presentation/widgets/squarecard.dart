import 'package:flutter/material.dart';
import 'package:telebirr/core/theme/theme.dart';

class SquareCard extends StatelessWidget {
  final Widget image;

  final String title;
  final Color? color;
  final List<BoxShadow>? boxShadow;
  const SquareCard({
    super.key,
    required this.image,

    required this.title,
    this.color,
    this.boxShadow,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color ?? theme.colorScheme.secondary,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: boxShadow,
      ),
      padding: EdgeInsets.symmetric(vertical: 6),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 4,
        children: [
          image,
          Flexible(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: theme.textTheme.labelMedium!.copyWith(fontSize: 13),
            ),
          ),
        ],
      ),
    );
  }
}
