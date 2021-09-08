import 'package:flutter/material.dart';
import 'package:meal/demodata.dart';
import 'package:meal/theme/sharedFontStyle.dart';
import 'package:meal/widgets/restaurantwidget.dart';
import 'package:meal/widgets/shoppingcartbutton.dart';




class All extends StatefulWidget {

  final String className;

  All(this.className);

  @override
  _AllState createState() => _AllState();
}

class _AllState extends State<All> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          '${widget.className}',
          style: primaryTextStyle
        ),
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          ShoppingCartButton()
        ],
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: widget.className == 'Popular Restaurant' ? restaurantImage.length : categoryData.length,
        itemBuilder: (context, index) {
          return RestaurantWidget(
             widget.className == 'Popular Restaurant' ? restaurantImage[index] : categoryData[index]['img']
          );
        },
      ),
    );
  }
}