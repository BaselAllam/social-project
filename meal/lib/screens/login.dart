import 'package:flutter/material.dart';
import 'package:meal/screens/bottomnavbar/bottomnavbar.dart';
import 'package:meal/screens/signup.dart';
import 'package:meal/theme/sharedColor.dart';
import 'package:meal/theme/sharedFontStyle.dart';
import 'package:meal/widgets/button.dart';
import 'package:meal/widgets/field.dart';
import 'package:meal/widgets/snack.dart';




class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

GlobalKey<FormState> emailKey = GlobalKey<FormState>();
GlobalKey<FormState> passwordKey = GlobalKey<FormState>();

GlobalKey<FormState> mainKey = GlobalKey<FormState>();

bool passwordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: mainKey,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                '\nLogin',
                style: TextStyle(color: primaryFontColor, fontSize: 40.0, fontWeight: FontWeight.bold),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Welcome Back lets Login\n',
                style: primaryTextStyle,
              ),
            ),
            field('Email Address', Icons.email, TextInputType.emailAddress, emailController, emailKey),
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
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: CustomButton(
                'Login',
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
                onTap: () {},
                child: Text(
                  'Forgot your Password ?',
                  style: primaryTextStyle,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {return SingUp();}));
                },
                child: Text(
                  '\nDont Have an Account ? Signup',
                  style: TextStyle(color: mainColor, fontSize: 17.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}