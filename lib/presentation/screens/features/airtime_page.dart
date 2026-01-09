import 'package:flutter/material.dart';
import 'package:telebirr/core/theme/theme.dart';
import 'package:telebirr/presentation/widgets/my_carousel.dart';

class AirTimePage extends StatefulWidget {
  const AirTimePage({super.key});

  @override
  State<AirTimePage> createState() => _AirTimePageState();
}

class _AirTimePageState extends State<AirTimePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Airtime/Package"),
        backgroundColor: theme.colorScheme.shadow,
      ),
      body: Column(
        children: [
          MyCarousel(
            color: theme.colorScheme.shadow,
            viewportFraction: 1,
            indicatorRadius: 4,
          ),
          DefaultTabController(
            length: 3,
            child: Row(
              children: [
                TabBar(
                  tabs: [
                    Tab(text: "Airtime"),
                    Tab(text: "Package"),
                    Icon(Icons.favorite_border),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
