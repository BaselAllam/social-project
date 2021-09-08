import 'package:flutter/material.dart';
import 'package:meal/demodata.dart';
import 'package:meal/screens/all.dart';
import 'package:meal/theme/sharedColor.dart';
import 'package:meal/theme/sharedFontStyle.dart';
import 'package:meal/widgets/categoryWidget.dart';
import 'package:meal/widgets/restaurantwidget.dart';
import 'package:meal/widgets/shoppingcartbutton.dart';



class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Welcome Ay 7ad',
          style: primaryTextStyle
        ),
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          ShoppingCartButton()
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ListTile(
            title: Text(
              'Delivering to',
              style: secondaryTextStyle
            ),
            subtitle: Text(
              'Current Location',
              style: primaryTextStyle
            ),
            trailing: Icon(Icons.arrow_downward, color: mainColor, size: 25),
          ),
          Container(
            height: 125.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categoryData.length,
              itemBuilder: (context, index) {
                return CategoryWidget(
                  categoryData[index]['img'],
                  categoryData[index]['txt'],
                );
              },
            ),
          ),
          item('Popular Restaurant'),
          for(String image in restaurantImage)
          RestaurantWidget(image),
          item('Popular Meals'),
          Container(
            height: MediaQuery.of(context).size.height/3.5,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categoryData.length,
              itemBuilder: (context, index) {
                return RestaurantWidget(categoryData[index]['img']);
              },
            ),
          ),
        ],
      ),
    );
  }
  ListTile item(String title) {
    return ListTile(
      title: Text(
        '$title',
        style: primaryTextStyle,
      ),
      trailing: Text(
        'view all',
        style: TextStyle(color: mainColor, fontSize: 18),
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) {return All(title);}));
      },
    );
  }
}