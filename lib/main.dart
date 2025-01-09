import 'package:barber_shop/screens/home.dart';
import 'package:barber_shop/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barbearia Aruana',
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
