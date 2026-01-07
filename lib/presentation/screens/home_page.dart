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
    final serviceExp = ExampleServices.services;
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
                  isVisibleBalance ? "201.32" : "******",
                  style: theme.textTheme.titleLarge!.copyWith(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
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
            child: CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                  sliver: SliverToBoxAdapter(
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        mainAxisSpacing: 10.0,
                        crossAxisSpacing: 10,
                        childAspectRatio: 0.8,
                      ),
                      itemCount: serviceExp.length,
                      itemBuilder: (context, index) {
                        return SquareCard(
                          image: serviceExp[index][1],
                          //  Image.asset(
                          //   'assets/ethiotelecom logo.jpg',

                          //   cacheHeight: 30,
                          // ),
                          title: serviceExp[index][0],
                        );
                      },
                    ),
                  ),
                ),

                SliverToBoxAdapter(
                  child: FlutterCarousel.builder(
                    itemCount: 4,
                    itemBuilder: (context, index, realIndex) {
                      return Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.grey.shade200,
                        ),
                        child: Image.asset(
                          'assets/image.png',
                          fit: BoxFit.fitWidth,
                        ),
                      );
                    },
                    options: FlutterCarouselOptions(
                      enableInfiniteScroll: true,
                      height: 160,
                      viewportFraction: 0.9,
                      autoPlay: true,
                      showIndicator: true,
                      slideIndicator: CircularSlideIndicator(
                        slideIndicatorOptions: SlideIndicatorOptions(
                          indicatorRadius: 5.0,
                          indicatorBorderWidth: 1.40,
                          indicatorBackgroundColor: theme.colorScheme.secondary,
                          currentIndicatorColor: theme.colorScheme.primary,
                          indicatorBorderColor: theme.colorScheme.primary,
                        ),
                      ),
                    ),
                  ),
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
                                style: theme.textTheme.headlineLarge!.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
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
                      childAspectRatio: 0.8,
                    ),
                    itemCount: serviceExp.length,
                    itemBuilder: (context, index) {
                      return SquareCard(
                        image: serviceExp[index][1],
                        //  Image.asset(
                        //   'assets/ethiotelecom logo.jpg',

                        //   cacheHeight: 30,
                        // ),
                        title: serviceExp[index][0],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 25),
              child: MyButton(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.qr_code_scanner_rounded),
                    Text('Scan QR', style: theme.textTheme.displayMedium),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
