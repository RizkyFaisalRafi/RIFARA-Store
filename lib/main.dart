import 'package:flutter/material.dart';
import 'package:rifaraclothstore/pages/cancel_order_page.dart';
import 'package:rifaraclothstore/pages/grey_cancel.dart';
import 'package:rifaraclothstore/pages/rate_order_page.dart';
import 'package:rifaraclothstore/pages/splash_screen.dart';

void main() {
  runApp(const EcommerceApp());
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RIFARA ClothStore',
      debugShowCheckedModeBanner: false,
      home: splashScreen(),
    );
  }
}