import 'package:flutter/material.dart';
import 'package:meal/theme/sharedFontStyle.dart';



class CategoryWidget extends StatefulWidget {

  final String img;
  final String txt;

  CategoryWidget(this.img, this.txt);

  @override
  _CategoryWidgetState createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: 100.0,
      child: Column(
        children: [
          Container(
            height: 75.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: NetworkImage(widget.img),
                fit: BoxFit.fill
              )
            ),
          ),
          Text(
            '${widget.txt}',
            style: secondaryTextStyle,
          )
        ],
      ),
    );
  }
}