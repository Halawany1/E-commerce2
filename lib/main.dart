import 'package:flutter/material.dart';
import 'package:product_screen/Categories.dart';
import 'package:product_screen/SignUp_screen.dart';
import 'package:product_screen/signIn_Screen.dart';
import 'package:product_screen/productDetails.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Detials(),
    );
  }
}
