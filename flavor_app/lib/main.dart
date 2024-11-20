import 'package:flutter/material.dart';

enum Flavor { CUSTOMER, VENDOR, DELIVERY }

class FlavorConfig {
  final Flavor flavor;
  static FlavorConfig? _instance;

  FlavorConfig({required this.flavor});

  static FlavorConfig? get instance => _instance;

  void run() {
    _instance = this;
    runApp(MyApp());
  }
}

void main() {
  FlavorConfig(flavor: Flavor.CUSTOMER).run(); // Default to Customer if no specific entry point
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flavor App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(FlavorConfig.instance?.flavor.toString() ?? "App"),
        ),
        body: Center(
          child: Text('Welcome to the ${FlavorConfig.instance?.flavor} App'),
        ),
      ),
    );
  }
}
