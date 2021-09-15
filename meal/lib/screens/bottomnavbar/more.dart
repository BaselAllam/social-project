import 'package:flutter/material.dart';
import 'package:meal/screens/more/aboutus.dart';
import 'package:meal/screens/more/contactus.dart';
import 'package:meal/screens/more/payment.dart';
import 'package:meal/screens/more/settings.dart';
import 'package:meal/screens/more/vouchers.dart';
import 'package:meal/theme/sharedFontStyle.dart';
import 'package:meal/widgets/shoppingcartbutton.dart';
import 'package:meal/theme/sharedColor.dart';



class More extends StatefulWidget {

  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {

  final List<Map<String, dynamic>> items = [
  {
    'icon' : Icons.attach_money,
    'txt' : 'Payment Mthods',
    'screen' : Payment()
  },
  {
    'icon' : Icons.local_offer,
    'txt' : 'Vouchers',
    'screen' : Vouchers()
  },
  {
    'icon' : Icons.settings,
    'txt' : 'Settings',
    'screen' : Setting()
  },
  {
    'icon' : Icons.phone,
    'txt' : 'Contact Us',
    'screen' : ContactUs()
  },
  {
    'icon' : Icons.info,
    'txt' : 'About Us',
    'screen' : AboutUs()
  },
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'More',
          style: primaryTextStyle
        ),
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          ShoppingCartButton()
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(15.0)
              ),
              child: ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: placeHolderColor
                  ),
                  padding: EdgeInsets.all(10.0),
                  child: Icon(items[index]['icon'], color: primaryFontColor, size: 30.0),
                ),
                title: Text(
                  items[index]['txt'],
                  style: primaryTextStyle,
                ),
                trailing: Icon(Icons.arrow_forward_ios, color: placeHolderColor, size: 25.0),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {return items[index]['screen'];}));
                },
              ),
            );
          },
        ),
      ),
    );
  }
}