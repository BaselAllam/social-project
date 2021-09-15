import 'package:flutter/material.dart';
import 'package:meal/demodata.dart';
import 'package:meal/screens/checkout.dart';
import 'package:meal/theme/sharedColor.dart';
import 'package:meal/theme/sharedFontStyle.dart';
import 'package:meal/widgets/backbutton.dart';
import 'package:meal/widgets/button.dart';
import 'package:meal/widgets/mealwidget.dart';



class ShoppingCart extends StatefulWidget {

  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Shopping Cart',
          style: primaryTextStyle
        ),
        iconTheme: IconThemeData(color: Colors.black),
        leading: CustomBackButton()
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          MealItem(categoryData[0]['img']),
          item('Beef Burger *2', primaryTextStyle, '\$20', secondaryTextStyle),
          item('Chinken Burger *2', primaryTextStyle, '\$20', secondaryTextStyle),
          item('Fish *2', primaryTextStyle, '\$20', secondaryTextStyle),
          item('Delivery Fee', primaryTextStyle, '20\$', TextStyle(color: mainColor, fontSize: 20.0)),
          item('Total', primaryTextStyle, '20\$', TextStyle(color: mainColor, fontSize: 20.0)),
          Column(
            children: [
              CustomButton('CheckOut', () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {return CheckOut();}));
              })
            ],
          ),
        ],
      ),
    );
  }
  ListTile item(String txt, TextStyle textStyle, String txt2, TextStyle textStyle2) {
    return ListTile(
      title: Text(txt, style: textStyle),
      trailing: Text(txt2, style: textStyle2),
    );
  }
}