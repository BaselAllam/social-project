import 'package:flutter/material.dart';
import 'package:portfolio/screens/homepage/firstSection.dart';




class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            FirstSection(),
          ],
        ),
      ),
    );
  }
}