import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(home: CustomerHomePage()));
}

class MyApp extends StatelessWidget {
  final Widget home;
  MyApp({required this.home});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home,
    );
  }
}

class CustomerHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Customer Home')),
      body: Center(child: Text('Welcome, Customer!')),
    );
  }
}
