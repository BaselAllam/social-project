import 'package:flutter/material.dart';
import 'package:meal/theme/sharedColor.dart';
import 'package:meal/theme/sharedFontStyle.dart';



class CustomButton extends StatefulWidget {

  final String txt;
  final Function onTap;

  CustomButton(this.txt, this.onTap);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text('${widget.txt}', style: buttonTextStyle),
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        backgroundColor: mainColor,
        fixedSize: Size(MediaQuery.of(context).size.width/1.5, 40.0)
      ),
      onPressed: () {
        widget.onTap();
      },
    );
  }
}