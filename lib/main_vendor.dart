import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(home: VendorHomePage()));
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

class VendorHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Vendor Home')),
      body: Center(child: Text('Welcome, Vendor!')),
    );
  }
}
