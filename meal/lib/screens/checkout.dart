import 'package:flutter/material.dart';
import 'package:meal/theme/sharedColor.dart';
import 'package:meal/theme/sharedFontStyle.dart';
import 'package:meal/widgets/button.dart';

enum SingingCharacter { isVisa, isCash, isPaypal }

class CheckOut extends StatefulWidget {

  @override
  _CheckOutState createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {

SingingCharacter? _character = SingingCharacter.isVisa;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Checkout',
          style: primaryTextStyle
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            ListTile(
              title: Text('Delivery Address', style: secondaryTextStyle,),
              subtitle: Text('Cairo, Egypt, Nasr City', style: primaryTextStyle,),
              trailing: Text('Change\nAddress', style: TextStyle(color: mainColor, fontSize: 16.0, fontWeight: FontWeight.bold)),
            ),
            ListTile(
              title: Text('Payment Method', style: secondaryTextStyle,),
              trailing: Text('Add Card', style: TextStyle(color: mainColor, fontSize: 16.0, fontWeight: FontWeight.bold)),
            ),
            paymentItem(
              'Pay on Delivery', 'https://img.flaticon.com/icons/png/512/438/438526.png?size=1200x630f&pad=10,10,10,10&ext=png&bg=FFFFFFFF',
              Radio<SingingCharacter>(
                  value: SingingCharacter.isCash,
                  groupValue: _character,
                  activeColor: mainColor,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
            paymentItem(
              'Credit Card', 'https://icons-for-free.com/iconfiles/png/512/credit+card+debit+card+master+card+icon-1320184902602310693.png',
              Radio<SingingCharacter>(
                  value: SingingCharacter.isVisa,
                  groupValue: _character,
                  activeColor: mainColor,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
            paymentItem(
              'PayPal', 'https://www.nicepng.com/png/detail/395-3955418_paypal-icon-png.png',
              Radio<SingingCharacter>(
                  value: SingingCharacter.isPaypal,
                  groupValue: _character,
                  activeColor: mainColor,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
              item('Delivery Fee', primaryTextStyle, '\$20', secondaryTextStyle),
              item('Tax', primaryTextStyle, '\$20', secondaryTextStyle),
              item('Total', primaryTextStyle, '\$20', secondaryTextStyle),
              Column(
              children: [
                CustomButton('Place Order', () {})
              ],
            ),
          ],
        ),
      ),
    );
  }
  paymentItem(String title, String image, Widget trailing) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.white,
        minRadius: 35.0,
        maxRadius: 35.0,
        backgroundImage: NetworkImage('$image'),
      ),
      title: Text('$title', style: primaryTextStyle,),
      trailing: trailing
    );
  }
  ListTile item(String txt, TextStyle textStyle, String txt2, TextStyle textStyle2) {
    return ListTile(
      title: Text(txt, style: textStyle),
      trailing: Text(txt2, style: textStyle2),
    );
  }
}