import 'package:flutter/material.dart';
import 'package:ui_responsive_myp/Constants/textstyles.dart';
import 'package:ui_responsive_myp/Screens/Enquiries/View/enquries_screen.dart';
import 'package:ui_responsive_myp/Screens/Home/View/home_screen.dart';
import 'package:ui_responsive_myp/Screens/Materials/View/material_screen.dart';
import 'package:ui_responsive_myp/Screens/Orders/View/orders_screen.dart';
import 'package:ui_responsive_myp/Screens/Payments/View/payments_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  void onTapBay(index) {
    setState(
      () {
        // _selectedIndex = selectedIndexProviderData.getSelectedIndex;
        _selectedIndex = index;

        debugPrint('index = selectedIndexProviderData.getSelectedIndex}');
      },
    );
  }

  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = [
    const HomeScreen(),
    const MaterialsScreen(),
    const PaymentsScreen(),
    const OrdersScreen(),
    const EnquriesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: SizedBox(
        height: mediaQuery.size.height * 0.085,
        child: BottomNavigationBar(
          elevation: 0.0,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            onTapBay(index);
          },
          currentIndex: _selectedIndex,
          selectedLabelStyle: kTextStyleMedium.copyWith(
              fontSize: mediaQuery.size.height * 0.013, color: Colors.white),
          unselectedLabelStyle: kTextStyleMedium.copyWith(
            fontSize: mediaQuery.size.height * 0.013,
          ),
          selectedItemColor: Colors.white,
          // unselectedItemColor: Colors.black,
          backgroundColor: const Color(0xFFBAD350),
          items: [
            BottomNavigationBarItem(
              activeIcon: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Icon(
                  Icons.ac_unit,
                  size: mediaQuery.size.height * 0.03,
                  color: Colors.black,
                ),
              ),
              label: 'Home',
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Icon(
                  Icons.ac_unit,
                  size: mediaQuery.size.height * 0.03,
                  color: Colors.black,
                ),
              ),
            ),
            BottomNavigationBarItem(
              activeIcon: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Icon(
                  Icons.account_balance_outlined,
                  size: mediaQuery.size.height * 0.03,
                  color: Colors.black,
                ),
              ),
              label: 'Materials',
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Icon(
                  Icons.account_balance_outlined,
                  size: mediaQuery.size.height * 0.03,
                  color: Colors.black,
                ),
              ),
            ),
            BottomNavigationBarItem(
              activeIcon: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Icon(
                  Icons.border_all_sharp,
                  size: mediaQuery.size.height * 0.03,
                  color: Colors.black,
                ),
              ),
              label: 'Payments',
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Icon(
                  Icons.border_all_sharp,
                  size: mediaQuery.size.height * 0.03,
                  color: Colors.black,
                ),
              ),
            ),
            BottomNavigationBarItem(
              activeIcon: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Icon(
                  Icons.amp_stories_outlined,
                  size: mediaQuery.size.height * 0.03,
                  color: Colors.black,
                ),
              ),
              label: 'Orders',
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Icon(
                  Icons.amp_stories_outlined,
                  size: mediaQuery.size.height * 0.03,
                  color: Colors.black,
                ),
              ),
            ),
            BottomNavigationBarItem(
              activeIcon: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Icon(
                  Icons.info_outline,
                  size: mediaQuery.size.height * 0.03,
                  color: Colors.black,
                ),
              ),
              label: 'Enquries',
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Icon(
                  Icons.info_outline,
                  size: mediaQuery.size.height * 0.03,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
