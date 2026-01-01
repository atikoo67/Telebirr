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
        color: color ?? Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: boxShadow,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 5,
        children: [
          image,
          Text(
            title,
            textAlign: TextAlign.center,
            style: theme.textTheme.labelMedium,
          ),
        ],
      ),
    );
  }
}
