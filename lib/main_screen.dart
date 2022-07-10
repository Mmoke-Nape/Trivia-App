import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trivia_app/constants/app_colors.dart';
import 'package:trivia_app/screens/Discover/discover_screen.dart';
import 'package:trivia_app/screens/home/home_screen.dart';
import 'package:trivia_app/screens/leaderboard%20screen/leaderboard_screen.dart';
import 'package:trivia_app/screens/user%20profile%20screen/user_profile_screen.dart';

import 'constants/app_routes.dart';

// import 'components/cateogories.dart';
// import 'components/coupon.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  final screens = const [
    HomeScreen(),
    DiscoverScreen(),
    LeaderboardScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(45), topRight: Radius.circular(35)),
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedItemColor: AppColors.black,
            unselectedItemColor: Colors.grey,
            selectedFontSize: 0,
            unselectedFontSize: 0,
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Discover',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart),
                label: 'Leaderboard',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'Account',
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Get.toNamed(AppRoutes.postScreen);
            Get.toNamed(AppRoutes.createQuizRoute);
          },
          backgroundColor: AppColors.royalBlue,
          child: const Icon(
            Icons.add,
            size: 32,
            color: Colors.white,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
