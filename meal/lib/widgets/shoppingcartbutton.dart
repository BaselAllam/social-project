import 'package:flutter/material.dart';
import 'package:meal/screens/shoppingcart.dart';



class ShoppingCartButton extends StatefulWidget {

  @override
  _ShoppingCartButtonState createState() => _ShoppingCartButtonState();
}

class _ShoppingCartButtonState extends State<ShoppingCartButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
    icon: Icon(
        Icons.shopping_cart,
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) {return ShoppingCart();}));
      },
    );
  }
}