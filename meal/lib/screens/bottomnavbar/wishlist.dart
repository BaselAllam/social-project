import 'package:flutter/material.dart';
import 'package:meal/demodata.dart';
import 'package:meal/theme/sharedFontStyle.dart';
import 'package:meal/widgets/restaurantwidget.dart';
import 'package:meal/widgets/shoppingcartbutton.dart';



class Wishlist extends StatefulWidget {

  @override
  _WishlistState createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Wishlist',
          style: primaryTextStyle
        ),
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          ShoppingCartButton()
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Text(
              'Wishlisted Restaurant\n',
              style: primaryTextStyle,
            ),
            for(int i = 0; i < 3; i++)
            RestaurantWidget(restaurantImage[i], false),
          ],
        ),
      ),
    );
  }
}