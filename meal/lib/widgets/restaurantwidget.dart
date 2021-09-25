import 'package:flutter/material.dart';
import 'package:meal/screens/resturantdetails.dart';
import 'package:meal/theme/sharedColor.dart';
import 'package:meal/theme/sharedFontStyle.dart';
import 'package:meal/widgets/fav.dart';



class RestaurantWidget extends StatefulWidget {

  final String img;
  final bool meal;

  RestaurantWidget(this.img, this.meal);

  @override
  _RestaurantWidgetState createState() => _RestaurantWidgetState();
}

class _RestaurantWidgetState extends State<RestaurantWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      margin: EdgeInsets.all(10.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {return RestaurantDetails();}));
        },
        child: Container(
          width: MediaQuery.of(context).size.width/1.5,
          child: Column(
            children: [
              Container(
                height: 100.0,
                margin: EdgeInsets.all(10.0),
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
                trailing: widget.meal == true ? 
                IconButton(
                  icon: Icon(Icons.add_circle),
                  color: mainColor,
                  iconSize: 35.0,
                  onPressed: () {},
                )
                : Fav()
              )
            ],
          ),
        ),
      ),
    );
  }
}