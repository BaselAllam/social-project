import 'package:flutter/material.dart';
import 'package:portfolio/theme/sharedcolor.dart';
import 'package:portfolio/widget/containerItem.dart';




class FirstSection extends StatefulWidget {

  @override
  _FirstSectionState createState() => _FirstSectionState();
}

class _FirstSectionState extends State<FirstSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15.0, right: 15.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://images.pexels.com/photos/2330137/pexels-photo-2330137.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
          fit: BoxFit.fill
        )
      ),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                HeaderItem('About'),
                HeaderItem('Services'),
                HeaderItem('Portfolio'),
                HeaderItem('Contact Me'),
                ContainerItem(
                  'Hire Me',
                  primaryColor,
                  Size(100, 50),
                  false
                )
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height/2.5),
          Align(
            alignment: Alignment.centerLeft,
            child: ContainerItem(
              'Hello I\'m',
              primaryColor,
              Size(120, 50),
              false
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Bassel Allam',
                style: TextStyle(color: Colors.white, fontSize: 40.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Software Developer & Instructor\n',
              style: TextStyle(color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.normal),
            ),
          ),
          Row(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: ContainerItem(
                  'Get a Qoute',
                  primaryColor,
                  Size(150, 55),
                  false
                ),
              ),
              SizedBox(width: 10.0,),
              Align(
                alignment: Alignment.centerLeft,
                child: ContainerItem(
                  'My Work',
                  Colors.transparent,
                  Size(150, 55),
                  true
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}




class HeaderItem extends StatefulWidget {
  
  final String txt;

  HeaderItem(this.txt);

  @override
  _HeaderItemState createState() => _HeaderItemState();
}

class _HeaderItemState extends State<HeaderItem> {

bool isSelected = false;
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        margin: EdgeInsets.only(left: 10.0, right: 10.0),
        height: 100,
        width: 110,
        decoration: BoxDecoration(
          color: isSelected == false ? Colors.transparent : primaryColor
        ),
        alignment: Alignment.bottomCenter,
        child: Text(
          '${widget.txt}\n',
          style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}