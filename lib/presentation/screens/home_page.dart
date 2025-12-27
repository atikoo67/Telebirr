import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:telebirr/core/constant/lists.dart';
import 'package:telebirr/core/theme/theme.dart';
import 'package:telebirr/presentation/widgets/mybutton.dart';
import 'package:telebirr/presentation/widgets/mymenubutton.dart';
import 'package:telebirr/presentation/widgets/squarecard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.primary,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/ethiotelecom.png', height: 30),
            Image.asset('assets/telebirr full.jpg', height: 30),
          ],
        ),
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: theme.colorScheme.secondary,
          child: Icon(
            Icons.map_sharp,
            size: 30,
            color: theme.colorScheme.primary,
          ),
        ),
      ),
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [Icon(Icons.person), Text('Selam, kenean')]),
                  MyMenuButton(languages: AppLists.languages),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Balance (ETB)'), Icon(Icons.visibility)],
              ),
              Text("******"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text('endekise (ETB)'),
                          Icon(Icons.visibility),
                        ],
                      ),
                      Text('13638.80'),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text('Reward (ETB)'),
                          Icon(Icons.visibility),
                        ],
                      ),
                      Text('0.00'),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: ColoredBox(
              color: theme.colorScheme.onSecondary,
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        mainAxisSpacing: 8.0,
                        crossAxisSpacing: 8.0,
                        childAspectRatio: 1.0,
                      ),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SquareCard(
                            image: Icon(
                              Icons.monetization_on_outlined,
                              color: theme.primaryColor,
                            ),
                            title: "Telebirr service",
                          ),
                        );
                      },
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: FlutterCarousel.builder(
                      itemCount: 4,
                      itemBuilder: (context, index, realIndex) {
                        return Container(
                          margin: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.grey.shade200,
                          ),
                          child: Image.asset(
                            'assets/telebirr full.jpg',
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                      options: FlutterCarouselOptions(
                        height: 200.0, // match child height
                        autoPlay: true,
                        showIndicator: true,
                        slideIndicator: CircularSlideIndicator(
                          slideIndicatorOptions: SlideIndicatorOptions(
                            indicatorRadius: 5.0,
                            indicatorBorderWidth: 1.0,
                            indicatorBackgroundColor:
                                Colors.grey, // inactive dots
                            currentIndicatorColor:
                                Colors.blueAccent, // active dot
                            indicatorBorderColor: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SliverToBoxAdapter(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Transaction Details',
                          style: theme.textTheme.headlineLarge,
                        ),
                        Icon(Icons.arrow_forward_ios, size: 12),
                      ],
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        mainAxisSpacing: 8.0,
                        crossAxisSpacing: 8.0,
                        childAspectRatio: 1.0,
                      ),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SquareCard(
                            image: Icon(
                              Icons.monetization_on_outlined,
                              color: theme.primaryColor,
                            ),
                            title: "Telebirr service",
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          MyButton(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.qr_code_scanner_rounded),
                Text('Scan QR', style: theme.textTheme.titleLarge),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
