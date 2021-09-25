import 'package:flutter/material.dart';
import 'package:meal/screens/bottomnavbar/bottomnavbar.dart';
import 'package:meal/theme/sharedColor.dart';
import 'package:meal/theme/sharedFontStyle.dart';
import 'package:meal/widgets/backbutton.dart';
import 'package:meal/widgets/button.dart';
import 'package:meal/widgets/field.dart';
import 'package:meal/widgets/snack.dart';


class SingUp extends StatefulWidget {

  @override
  _SingUpState createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {

TextEditingController emailController = TextEditingController();
TextEditingController userNameController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController confirmPasswordController = TextEditingController();

GlobalKey<FormState> emailKey = GlobalKey<FormState>();
GlobalKey<FormState> userNamekey = GlobalKey<FormState>();
GlobalKey<FormState> passwordKey = GlobalKey<FormState>();
GlobalKey<FormState> confirmPasswordKey = GlobalKey<FormState>();

GlobalKey<FormState> mainKey = GlobalKey<FormState>();

bool passwordHidden = true;

String gender = '';

DateTime birthDate = DateTime(2010);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: mainKey,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: CustomBackButton(),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                '\nSing Up',
                style: TextStyle(color: primaryFontColor, fontSize: 40.0, fontWeight: FontWeight.bold),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Welcome Back lets Singup\n',
                style: primaryTextStyle,
              ),
            ),
            field('Email Address', Icons.email, TextInputType.emailAddress, emailController, emailKey),
            field('User Name', Icons.account_circle, TextInputType.text, userNameController, userNamekey),
            subItem(
              'Gender ( $gender )',
              PopupMenuButton(
                child: Icon(Icons.arrow_downward, color: secondaryFontColor, size: 20.0),
                itemBuilder: (BuildContext context) {
                  return <PopupMenuEntry<String>>[
                    PopupMenuItem(
                      child: Text('Male'),
                      value: 'Male',
                    ),
                    PopupMenuItem(
                      child: Text('FeMale'),
                      value: 'FeMale',
                    ),
                  ];
                },
                onSelected: (value) {
                  setState(() {
                    gender = value.toString();
                  });
                },
              ),
            ),
            subItem(
              'Birth Date ( ${birthDate.toString().substring(0, 10)} )',
              IconButton(
                icon: Icon(Icons.calendar_today),
                color: secondaryFontColor,
                iconSize: 20.0,
                onPressed: () async {
                  DateTime? selectedDate = await showDatePicker(
                    context: context,
                    firstDate: DateTime(1950),
                    initialDate: DateTime(2010),
                    lastDate: DateTime(2010)
                  );
                  setState(() {
                    birthDate = selectedDate!;
                  });
                },
              ),
            ),
            field(
              'Password',
              Icons.lock,
              TextInputType.text,
              passwordController,
              passwordKey,
              obSecure: passwordHidden,
              suffix: IconButton(
                icon: Icon(Icons.remove_red_eye),
                color: secondaryFontColor,
                iconSize: 20.0,
                onPressed: () {
                  setState(() {
                    passwordHidden = !passwordHidden;
                  });
                },
              )
            ),
            field(
              'Confirm Password',
              Icons.lock,
              TextInputType.text,
              confirmPasswordController,
              confirmPasswordKey,
              obSecure: passwordHidden,
              suffix: IconButton(
                icon: Icon(Icons.remove_red_eye),
                color: secondaryFontColor,
                iconSize: 20.0,
                onPressed: () {
                  setState(() {
                    passwordHidden = !passwordHidden;
                  });
                },
              )
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: CustomButton(
                'Signup',
                () {
                  if(!mainKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(snack(Colors.red, 'Some Fileds Required'));
                  }else{
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) {return BottomNavBar();}));
                  }
                }
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Have an Account ? Login',
                  style: TextStyle(color: mainColor, fontSize: 17.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  ListTile subItem(String title, Widget trailing) {
    return ListTile(
      title: Text('$title', style: secondaryTextStyle),
      trailing: trailing
    );
  }
}