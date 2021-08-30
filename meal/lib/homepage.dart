import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Welcome Ay 7ad',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          Icon(
            Icons.shopping_cart,
          ),
        ],
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              if(10 < 20)
              for(int i =0; i < 5; i++)
              ListTile(
                leading: Icon(
                    Icons.settings,
                    color: Colors.black,
                  ),
                title: Text('Settings', style: TextStyle(color: Colors.black),),
                trailing: Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                  ),
              ),
              Text('Settings', style: TextStyle(color: Colors.black),),
              // ListTile(
              //   leading: Icon(
              //       Icons.info,
              //       color: Colors.black,
              //     ),
              //   title: Text('About Us', style: TextStyle(color: Colors.black),),
              //   trailing: Icon(
              //       Icons.arrow_forward,
              //       color: Colors.black,
              //     ),
              // ),
              // ListTile(
              //   leading: Icon(
              //       Icons.phone,
              //       color: Colors.black,
              //     ),
              //   title: Text('Contact Us', style: TextStyle(color: Colors.black),),
              //   trailing: Icon(
              //       Icons.arrow_forward,
              //       color: Colors.black,
              //     ),
              // ),
            ],
          ),
        ),
      )
    );
  }
}