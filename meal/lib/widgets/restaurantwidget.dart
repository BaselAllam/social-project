import 'package:flutter/material.dart';
import 'package:meal/screens/resturantdetails.dart';
import 'package:meal/theme/sharedColor.dart';
import 'package:meal/theme/sharedFontStyle.dart';



class RestaurantWidget extends StatefulWidget {

  final String img;

  RestaurantWidget(this.img);

  @override
  _RestaurantWidgetState createState() => _RestaurantWidgetState();
}

class _RestaurantWidgetState extends State<RestaurantWidget> {

  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) {return RestaurantDetails();}));
      },
      child: Container(
        margin: EdgeInsets.all(10.0),
        width: MediaQuery.of(context).size.width/1.5,
        child: Column(
          children: [
            Container(
              height: 100.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: NetworkImage(widget.img),
                  fit: BoxFit.fill
                )
              ),
            ),
            ListTile(
              title: Text(
                'Heart Attack',
                style: primaryTextStyle,
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '*4.9 (20 Reviews)',
                    style: TextStyle(color: mainColor, fontSize: 17.0),
                  ),
                  Text(
                    '  500 Meter Away',
                    style: secondaryTextStyle,
                  ),
                ],
              ),
              trailing: IconButton(
                icon: Icon(isPressed == false ? Icons.favorite_border : Icons.favorite),
                color: Colors.red,
                iconSize: 20.0,
                onPressed: () {
                  setState(() {
                    isPressed = !isPressed;
                  });
                },
              )
            )
          ],
        ),
      ),
    );
  }
}