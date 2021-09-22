import 'package:flutter/material.dart';
import 'package:meal/theme/sharedColor.dart';
import 'package:meal/theme/sharedFontStyle.dart';



Container field(String label, IconData icon, TextInputType type, TextEditingController controller, Key key, { bool obSecure = false, Widget? suffix}) {
  return Container(
    margin: EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      color: Colors.grey[200],
      borderRadius: BorderRadius.circular(20.0)
    ),
    child: TextFormField(
      key: key,
      validator: (value) {
        if(value!.isEmpty) {
          return 'this field required';
        }
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide.none,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide(color: Colors.red, width: 0.5),
        ),
        labelText: '$label',
        labelStyle: secondaryTextStyle,
        prefixIcon: Icon(icon, color: secondaryFontColor, size: 20.0),
        suffixIcon: suffix
      ),
      keyboardType: type,
      obscureText: obSecure,
      controller: controller,
    ),
  );
}