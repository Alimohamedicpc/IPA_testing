import 'package:fastfood/constant.dart';
import 'package:fastfood/screens/bottom_navigation_screens/discover.dart';
import 'package:fastfood/screens/bottom_navigation_screens/favorite.dart';
import 'package:fastfood/screens/bottom_navigation_screens/profile.dart';
import 'package:fastfood/screens/bottom_navigation_screens/restaurant.dart';
import 'package:fastfood/screens/bottom_navigation_screens/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int myindex = 0;
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            myindex = index;
          });
        },
        children: [
          Discover(),
          Restaurant(),
          const Search(),
          Favorite(),
          const Profile(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        selectedItemColor: kprimarycolor,
        onTap: (index) {
          setState(() {
            myindex = index;
          });
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: myindex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Discover"),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant),
            label: "Restaurant",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
