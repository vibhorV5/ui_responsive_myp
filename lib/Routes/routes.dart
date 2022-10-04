import 'package:get/get.dart';
import 'package:ui_responsive_myp/Screens/Enquiries/View/enquries_screen.dart';
import 'package:ui_responsive_myp/Screens/Home/View/home_screen.dart';
import 'package:ui_responsive_myp/Screens/Materials/View/material_screen.dart';
import 'package:ui_responsive_myp/Screens/Orders/View/orders_screen.dart';
import 'package:ui_responsive_myp/Screens/Payments/View/payments_screen.dart';

const String home = '/homeScreen';
const String enquries = '/enquriesScreen';
const String orders = '/ordersScreen';
const String payments = '/paymentsScreen';
const String materials = '/materialsScreen';

class Routes {
  static final routes = [
    GetPage(name: payments, page: () => const PaymentsScreen()),
    GetPage(name: home, page: () => const HomeScreen()),
    GetPage(name: enquries, page: () => const EnquriesScreen()),
    GetPage(name: materials, page: () => const MaterialsScreen()),
    GetPage(name: orders, page: () => const OrdersScreen()),
  ];
}
