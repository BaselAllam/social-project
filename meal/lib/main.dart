import 'package:flutter/material.dart';
import 'package:meal/models/shared.dart';
import 'package:meal/screens/bottomnavbar/bottomnavbar.dart';
import 'package:meal/screens/login.dart';



void main() {
  runApp(MyApp());
}



class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

bool isvalid = false;

@override
void initState() {
  checkUser();
  super.initState();
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: isvalid == true ? BottomNavBar() : Login(),
      debugShowCheckedModeBanner: false,
    );
  }
  checkUser() async {

    bool valid = await Shared.getFromLocal('user');
    setState(() {
      isvalid = valid;
    });
  }
}

// Web Assignment => https://www.behance.net/gallery/102515935/Personal-Website?tracking_source=search_projects_recommended%7Cportfolio%20website%20design





// xd URL => https://www.behance.net/gallery/108639283/Meal-Monkey-Food-delivery-iOS-mobile-application?tracking_source=search_projects_recommended%7Cmeal%20monkey%20app

// New XD URL => https://www.behance.net/gallery/104564545/Food-Door-app?tracking_source=search_projects_recommended%7Cfood%20delivery%20app