import 'package:flutter/material.dart';
import 'package:meal/theme/sharedFontStyle.dart';
import 'package:meal/widgets/shoppingcartbutton.dart';



class RestaurantDetails extends StatefulWidget {

  @override
  _RestaurantDetailsState createState() => _RestaurantDetailsState();
}

class _RestaurantDetailsState extends State<RestaurantDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Restaurant Details',
          style: primaryTextStyle
        ),
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          ShoppingCartButton()
        ],
      ),
    );
  }
}