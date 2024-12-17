import 'package:flutter/material.dart';
import 'package:travel_mate/widgets/home_screen.dart';
import 'package:travel_mate/widgets/messages_screen.dart';
import 'package:travel_mate/widgets/profile_screen.dart';
import 'package:travel_mate/widgets/tour_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _selectedIndex = 0;
  PageController _pageController = PageController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            _selectedIndex = index;
          },
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            HomeScreen(),
            MessageScreen(
              hasMessages: true,
            ),
            TourScreen(
              hasTrip: true,
            ),
            ProfileScreen(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            selectedFontSize: 20,
            selectedIconTheme:
                const IconThemeData(color: Color(0xff4A6670), size: 40),
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
            selectedItemColor: const Color(0xff4A6670),
            showUnselectedLabels: true,
            unselectedIconTheme: const IconThemeData(color: Color(0xff7AA0A7)),
            unselectedItemColor: const Color(0xff7AA0A7),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  backgroundColor: Color(0xffFFFFFF),
                  icon: Icon(Icons.home),
                  label: 'Home'),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xffFFFFFF),
                  icon: Icon(Icons.message),
                  label: 'Message'),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xffFFFFFF),
                  icon: Icon(Icons.tour),
                  label: 'Tour'),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xffFFFFFF),
                  icon: Icon(Icons.person),
                  label: 'Profile'),
            ]));
  }
}
