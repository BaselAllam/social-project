import 'package:flutter/material.dart';
import 'package:meal/theme/sharedColor.dart';
import 'package:meal/theme/sharedFontStyle.dart';



class MealItem extends StatefulWidget {

  final String img;

  MealItem(this.img);

  @override
  _MealItemState createState() => _MealItemState();
}

class _MealItemState extends State<MealItem> {

  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Row(
        children: [
          Container(
            height: 100.0,
            width: 100.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: NetworkImage(widget.img),
                fit: BoxFit.fill
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textItem('Meal Name', primaryTextStyle),
                Row(
                  children: [
                    Icon(Icons.attach_money, color: mainColor, size: 20.0,),
                    textItem('Meal Price ${200*counter}\$', secondaryTextStyle),
                  ],
                ),
                Row(
                  children: [
                    textItem('Quantity', secondaryTextStyle),
                    IconButton(
                      icon: Icon(Icons.add),
                      color: mainColor,
                      iconSize: 20.0,
                      onPressed: () {
                        setState(() {
                          counter++;
                        });
                      },
                    ),
                    textItem('$counter', primaryTextStyle),
                    IconButton(
                      icon: Icon(Icons.remove),
                      color: mainColor,
                      iconSize: 20.0,
                      onPressed: () {
                        setState(() {
                          counter--;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Text textItem(String txt, TextStyle textStyle) {
    return Text('$txt', style: textStyle);
  }
}