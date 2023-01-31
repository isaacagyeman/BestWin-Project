import 'package:bestwin/Responsive/mobileScaffold.dart';
import 'package:bestwin/Responsive/responsiveLayout.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bestwin',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        ),
      );
  }
}





