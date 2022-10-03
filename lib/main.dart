import 'package:flutter/material.dart';
import 'package:ui_responsive_myp/Screens/Payments/View/payments_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ui responsive myp',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const PaymentsScreen(),
    );
  }
}
