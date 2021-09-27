import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meal/theme/sharedColor.dart';
import 'package:meal/theme/sharedFontStyle.dart';
import 'package:meal/widgets/button.dart';
import 'package:meal/widgets/shoppingcartbutton.dart';



class Profile extends StatefulWidget {

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

File? image;

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
                image: image == null ? DecorationImage(
                  image: NetworkImage('https://st.depositphotos.com/1007566/1246/v/600/depositphotos_12467429-stock-illustration-cartoon-chef.jpg'),
                  fit: BoxFit.fill
                ) : DecorationImage(
                  image: FileImage(image!),
                  fit: BoxFit.fill
                ),
                shape: BoxShape.circle
              ),
              child: IconButton(
                icon: Icon(Icons.add_a_photo),
                color: Colors.black,
                iconSize: 25.0,
                onPressed: () {
                  pickImage(ImageSource.camera);
                },
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
  pickImage(ImageSource source) async {
    XFile? _pickedImage = await ImagePicker().pickImage(source: source);
    setState(() {
      image = File(_pickedImage!.path);
    });
  }
}