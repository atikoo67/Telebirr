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
  bool isVisibleBalance = false;
  bool isVisibleEndekise = false;
  bool isVisibleReward = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.shadow,
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
            padding: const EdgeInsets.all(15.0),
            color: theme.colorScheme.primary,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(child: Icon(Icons.person, size: 30)),
                        Text(
                          'Selam, kenean',
                          style: theme.textTheme.displayMedium,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Icon(Icons.search_rounded, size: 23),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.notifications_none_rounded,
                            size: 23,
                          ),
                        ),
                        MyMenuButton(languages: AppLists.languages),
                      ],
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 3,
                  children: [
                    Text('Balance (ETB)', style: theme.textTheme.displayMedium),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isVisibleBalance = !isVisibleBalance;
                        });
                      },
                      child: Icon(
                        isVisibleBalance
                            ? Icons.visibility
                            : Icons.visibility_off,
                        size: theme.textTheme.displayMedium!.fontSize,
                      ),
                    ),
                  ],
                ),
                Text(
                  isVisibleBalance ? "24654.32" : "******",
                  style: isVisibleBalance
                      ? theme.textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                        )
                      : theme.textTheme.titleLarge!.copyWith(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          spacing: 3,
                          children: [
                            Text(
                              'Endekise (ETB)',
                              style: theme.textTheme.displayMedium,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isVisibleEndekise = !isVisibleEndekise;
                                });
                              },
                              child: Icon(
                                isVisibleEndekise
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                size: theme.textTheme.displayMedium!.fontSize,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          isVisibleEndekise ? "24654.32" : '******',
                          style: theme.textTheme.displayMedium,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          spacing: 3,
                          children: [
                            Text(
                              'Reward (ETB)',
                              style: theme.textTheme.displayMedium,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isVisibleReward = !isVisibleReward;
                                });
                              },
                              child: Icon(
                                isVisibleReward
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                size: theme.textTheme.displayMedium!.fontSize,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          isVisibleReward ? "24654.32" : '******',
                          style: theme.textTheme.displayMedium,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
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
                        crossAxisSpacing: 10,
                      ),
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return SquareCard(
                          image: Image.asset(
                            'assets/ethiotelecom logo.jpg',

                            cacheHeight: 30,
                          ),
                          title: "Telebirr service ",
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
                      vertical: 15,
                      horizontal: 5,
                    ),
                    sliver: SliverToBoxAdapter(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              print('  Transaction Details tapped');
                            },
                            child: Row(
                              children: [
                                Text(
                                  'Transaction Details',
                                  style: theme.textTheme.headlineLarge!
                                      .copyWith(fontWeight: FontWeight.w600),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 13,
                                  color: theme.textTheme.headlineLarge!.color,
                                ),
                              ],
                            ),
                          ),
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
                        crossAxisSpacing: 10,
                      ),
                      itemCount: 12,
                      itemBuilder: (context, index) {
                        return SquareCard(
                          image: Image.asset(
                            'assets/ethiotelecom logo.jpg',

                            cacheHeight: 30,
                          ),
                          title: "Telebirr service",
                        );
                      },
                    ),
                  ),
                ],
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
