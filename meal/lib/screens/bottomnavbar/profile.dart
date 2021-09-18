import 'package:flutter/material.dart';
import 'package:meal/theme/sharedColor.dart';
import 'package:meal/theme/sharedFontStyle.dart';
import 'package:meal/widgets/button.dart';
import 'package:meal/widgets/shoppingcartbutton.dart';



class Profile extends StatefulWidget {

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Profile',
          style: primaryTextStyle
        ),
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          ShoppingCartButton()
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              height: 200.0,
              width: MediaQuery.of(context).size.width/3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://lh3.googleusercontent.com/proxy/7k0FD34Vvp67UFXEH0vFq4nreucEW3skEs5HiYqgL1T3ZZjKYRMA220kFb3f4zPPURG21y-tZvoW8J58eYxPT5LW7dpYaDbkXs0SWirlcTWa'),
                  fit: BoxFit.fill
                ),
                shape: BoxShape.circle
              ),
              child: IconButton(
                icon: Icon(Icons.add_a_photo),
                color: Colors.black,
                iconSize: 25.0,
                onPressed: () {},
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: InkWell(
                onTap: () {},
                child: Text(
                  'Edit Profile',
                  style: TextStyle(color: mainColor, fontSize: 17.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Hi There Adam',
                style: primaryTextStyle
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: InkWell(
                onTap: () {},
                child: Text(
                  'Sign out',
                  style: secondaryTextStyle
                ),
              ),
            ),
            item('Name', 'Adam Allam'),
            item('Mobile Number', '01010101'),
            item('Email', 'Adam@gmail.com'),
            item('Address', 'Cairo Egypt'),
            item('Password', '*****'),
            CustomButton(
              'Save',
              () {}
            )
          ],
        ),
      ),
    );
  }
  item(String title, String subtitle) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(15.0)
      ),
      child: ListTile(
        title: Text(
          '$title',
          style: secondaryTextStyle,
        ),
        subtitle: Text(
          '$subtitle',
          style: primaryTextStyle,
        ),
      ),
    );
  }
}