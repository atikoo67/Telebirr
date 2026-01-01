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
      appBar: AppBar(
        toolbarHeight: 30,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/ethiotelecom.png',
              fit: BoxFit.fitHeight,
              height: 30,
            ),
            Image.asset(
              'assets/telebirr full.jpg',
              fit: BoxFit.fitHeight,
              height: 30,
            ),
          ],
        ),
      ),

      body: Column(
        children: [
          Container(
            color: theme.colorScheme.primary,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [Icon(Icons.person), Text('Selam, kenean')]),
                    Row(
                      children: [
                        Icon(Icons.search_rounded),
                        Icon(Icons.notifications_none_rounded),
                        MyMenuButton(languages: AppLists.languages),
                      ],
                    ),
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
          ),
          Expanded(
            child: ColoredBox(
              color: theme.colorScheme.onSecondary,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          mainAxisSpacing: 10.0,

                          childAspectRatio: 1.0,
                        ),
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: SquareCard(
                              image: Image.asset(
                                'assets/ethiotelecom logo.jpg',

                                cacheHeight: 30,
                              ),
                              title: "Telebirr service",
                            ),
                          );
                        },
                      ),
                    ),
                    SliverPadding(
                      sliver: SliverToBoxAdapter(
                        child: FlutterCarousel.builder(
                          itemCount: 4,
                          itemBuilder: (context, index, realIndex) {
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.grey.shade200,
                              ),
                              child: Image.asset(
                                'assets/telebirr full.jpg',
                                fit: BoxFit.fitWidth,
                              ),
                            );
                          },
                          options: FlutterCarouselOptions(
                            height: 150,
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
                      padding: const EdgeInsets.symmetric(vertical: 10),
                    ),

                    SliverPadding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 5,
                      ),
                      sliver: SliverToBoxAdapter(
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
                    ),
                    SliverToBoxAdapter(
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          mainAxisSpacing: 10.0,

                          childAspectRatio: 1.0,
                        ),
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: SquareCard(
                              image: Image.asset(
                                'assets/ethiotelecom logo.jpg',

                                cacheHeight: 30,
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
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: MyButton(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.qr_code_scanner_rounded),
                  Text('Scan QR', style: theme.textTheme.titleLarge),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
