import 'package:flutter/material.dart';
import 'package:meal/theme/sharedColor.dart';
import 'package:meal/theme/sharedFontStyle.dart';
import 'package:meal/widgets/fav.dart';
import 'package:meal/widgets/restaurantwidget.dart';
import 'package:meal/widgets/shoppingcartbutton.dart';



class RestaurantDetails extends StatefulWidget {

  @override
  _RestaurantDetailsState createState() => _RestaurantDetailsState();
}

class _RestaurantDetailsState extends State<RestaurantDetails> {
  @override
  Widget build(BuildContext context) {
    double mainContainerHeight = MediaQuery.of(context).size.height/2.7;
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
      body: Container(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                height: mainContainerHeight - 40,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://seeklogo.com/images/K/kfc-new-logo-72E6348046-seeklogo.com.png'),
                    fit: BoxFit.fill
                  )
                ),
              ),
              Positioned(
                top: mainContainerHeight - 80,
                height: MediaQuery.of(context).size.height - mainContainerHeight,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
                  elevation: 5.0,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))
                    ),
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        ListTile(
                          title: Text('Pizza Hut', style: primaryTextStyle,),
                          trailing: Fav(),
                        ),
                        Text(
                          '  Burger . Sandwich . Kids Meal\n',
                          style: secondaryBoldTextStyle,
                        ),
                        Row(
                          children: [
                            Text('  ****\n', style: TextStyle(color: Colors.amber, fontSize: 20.0, fontWeight: FontWeight.bold)),
                            Text('  4.9  +200 ( Review )\n', style: secondaryBoldTextStyle),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.monetization_on, color: Colors.green, size: 18.0),
                                Text('  Free Delivery', style: secondaryBoldTextStyle,)
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.watch, color: Colors.green, size: 18.0),
                                Text('  30 Min', style: secondaryBoldTextStyle,)
                              ],
                            ),
                          ],
                        ),
                        Container(
                          height: 60.0,
                          margin: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 20.0),
                          decoration: BoxDecoration(
                            color: Color(0xfffeebd0),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(35.0), bottomLeft: Radius.circular(35)),
                          ),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    'Burger',
                                    style: primaryTextStyle,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        for(int i = 0; i < 5; i++) RestaurantWidget('https://www.ahfesproject.com/app/uploads/2019/11/Healthy-Food-colourful-plate-554x370.jpg', true)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}