import 'package:flutter/material.dart';
import 'package:ui_responsive_myp/Routes/routes.dart';
import 'package:ui_responsive_myp/Screens/Main/Controller/main_controller.dart';
import 'package:ui_responsive_myp/Screens/Main/View/main_screen.dart';
import 'package:get/get.dart';
import 'package:ui_responsive_myp/Screens/Payments/Controller/payements_controller.dart';

void main() async {
  runApp(const MyApp());
  Get.lazyPut<PaymentsController>(() => PaymentsController());
  // Get.put(MainController());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: Routes.routes,
      debugShowCheckedModeBanner: false,
      title: 'Ui responsive myp',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MainScreen(),
    );
  }
}
