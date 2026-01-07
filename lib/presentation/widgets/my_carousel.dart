import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:telebirr/core/theme/theme.dart';

class MyCarousel extends StatelessWidget {
  double viewportFraction;
  Color? color;
  double indicatorRadius;
  MyCarousel({
    super.key,
    this.viewportFraction = 0.8,
    this.color,
    this.indicatorRadius = 5,
  });

  @override
  Widget build(BuildContext context) {
    return FlutterCarousel.builder(
      itemCount: 4,
      itemBuilder: (context, index, realIndex) {
        return Container(
          width: MediaQuery.of(context).size.width * 0.9,
          padding: EdgeInsets.symmetric(horizontal: 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: color ?? Colors.grey.shade200,
          ),
          child: Image.asset('assets/image.png', fit: BoxFit.fitWidth),
        );
      },
      options: FlutterCarouselOptions(
        enableInfiniteScroll: true,
        height: 160,
        viewportFraction: viewportFraction,
        autoPlay: true,
        showIndicator: true,
        slideIndicator: CircularSlideIndicator(
          slideIndicatorOptions: SlideIndicatorOptions(
            indicatorRadius: indicatorRadius,
            indicatorBorderWidth: 1.0,
            indicatorBackgroundColor: theme.colorScheme.secondary,
            currentIndicatorColor: theme.colorScheme.primary,
            indicatorBorderColor: theme.colorScheme.primary,
          ),
        ),
      ),
    );
  }
}
