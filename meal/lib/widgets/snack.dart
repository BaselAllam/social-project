import 'package:flutter/material.dart';


SnackBar snack(Color color, String content) {
  return SnackBar(
    content: Text('$content'),
    backgroundColor: color,
    duration: Duration(seconds: 3),
  );
}