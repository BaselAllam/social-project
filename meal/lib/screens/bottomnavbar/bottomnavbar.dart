import 'package:flutter/material.dart';
import 'package:meal/screens/bottomnavbar/homepage.dart';
import 'package:meal/screens/bottomnavbar/more.dart';
import 'package:meal/screens/bottomnavbar/orders.dart';
import 'package:meal/screens/bottomnavbar/profile.dart';
import 'package:meal/screens/bottomnavbar/wishlist.dart';
import 'package:meal/theme/sharedColor.dart';
import 'package:meal/theme/sharedFontStyle.dart';



class BottomNavBar extends StatefulWidget {

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

final List<Widget> screens = [
  Orders(), Wishlist(), HomePage(), Profile(), More(),
];

int current = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_menu),
            label: 'Orders'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Wishlist'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_vert),
            label: 'More'
          ),
        ],
        selectedIconTheme: IconThemeData(color: mainColor, size: 30.0),
        selectedLabelStyle: secondaryTextStyle,
        selectedItemColor: mainColor,
        unselectedItemColor: placeHolderColor,
        unselectedIconTheme: IconThemeData(color: placeHolderColor, size: 30.0),
        unselectedLabelStyle: secondaryTextStyle,
        currentIndex: current,
        onTap: (index) {
          setState(() {
            current = index;
          });
        },
      ),
      body: screens[current],
    );
  }
}