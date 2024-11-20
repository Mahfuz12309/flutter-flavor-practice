import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(home: DeliveryHomePage()));
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

class DeliveryHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Delivery Home')),
      body: Center(child: Text('Welcome, Delivery!')),
    );
  }
}
