import 'package:flutter/material.dart';
import 'package:portfolio/screens/homepage/homepage.dart';


void main() => runApp(MyApp());



class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}


// to be contuined إن شاء الله => https://www.behance.net/gallery/108863265/Portfolio-Website-UI-Design?tracking_source=search_projects_recommended%7Cportfolio%20website%20design