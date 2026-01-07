import 'package:flutter/material.dart';
import 'package:telebirr/core/theme/theme.dart';
import 'package:telebirr/presentation/screens/account_page.dart';
import 'package:telebirr/presentation/screens/apps_page.dart';
import 'package:telebirr/presentation/screens/engage_page.dart';
import 'package:telebirr/presentation/screens/home_page.dart';
import 'package:telebirr/presentation/screens/payment_page.dart';
import 'package:telebirr/presentation/widgets/customnavbar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();
  final List<Widget> _screens = [
    HomePage(),
    PaymentPage(),
    AppsPage(),
    EngagePage(),
    AccountPage(),
  ];

  void indexofItems(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: (index) {
          setState(() => _currentIndex = index);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
      floatingActionButton: _currentIndex == 0
          ? Container(
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
            )
          : null,
      bottomNavigationBar: CustomBottomNavBar(
        onTap: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(
            index,
          ); // or animateToPage for smooth slide
        },
        navItems: [
          NavItem(
            icon: Icons.home_outlined,
            label: 'Home',
            isActive: _currentIndex == 0,
            onTap: () => _pageController.jumpToPage(0),
            activeColor: null,
            inactiveColor: null,
            activebackgroundColor: null,
            inactivebackgroundColor: null,
          ),
          NavItem(
            icon: Icons.payment_outlined,
            label: 'Payment',
            isActive: _currentIndex == 1,
            onTap: () => _pageController.jumpToPage(1),
            activeColor: null,
            inactiveColor: null,
            activebackgroundColor: null,
            inactivebackgroundColor: null,
          ),
          NavItem(
            icon: Icons.apps_sharp,
            label: 'Apps',
            isActive: _currentIndex == 2,
            onTap: () => _pageController.jumpToPage(2),
            activeColor: null,
            inactiveColor: null,
            activebackgroundColor: null,
            inactivebackgroundColor: null,
          ),
          NavItem(
            icon: Icons.message_outlined,
            label: 'Engage',
            isActive: _currentIndex == 3,
            onTap: () => _pageController.jumpToPage(3),
            activeColor: null,
            inactiveColor: null,
            activebackgroundColor: null,
            inactivebackgroundColor: null,
          ),
          NavItem(
            icon: Icons.person_outline,
            label: 'Account',
            isActive: _currentIndex == 4,
            onTap: () => _pageController.jumpToPage(4),
            activeColor: null,
            inactiveColor: null,
            activebackgroundColor: null,
            inactivebackgroundColor: null,
          ),
        ],
      ),
    );
  }
}
