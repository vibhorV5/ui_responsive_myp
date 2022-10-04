import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //App Bar
              Container(
                padding: EdgeInsets.only(
                    left: mediaQuery.size.width * 0.068,
                    right: mediaQuery.size.width * 0.068,
                    top: mediaQuery.size.height * 0.005),
                width: mediaQuery.size.width,
                height: mediaQuery.size.height * 0.075,
                color: const Color(0xFFBAD350),
                child: Container(
                  // color: Colors.red,
                  margin:
                      EdgeInsets.only(bottom: mediaQuery.size.height * 0.033),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.ac_unit,
                            size: mediaQuery.size.height * 0.035,
                            color: Colors.black87,
                          ),
                          SizedBox(
                            width: mediaQuery.size.width * 0.068,
                          ),
                          Text(
                            'Orders Screen',
                            style: TextStyle(
                              fontFamily: 'PoppinsMedium',
                              color: Colors.black87,
                              fontSize: mediaQuery.size.height * 0.0175,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.notifications_outlined,
                            size: mediaQuery.size.height * 0.031,
                            color: Colors.black87,
                          ),
                          SizedBox(
                            width: mediaQuery.size.height * 0.031,
                          ),
                          Icon(
                            Icons.account_box_outlined,
                            size: mediaQuery.size.height * 0.031,
                            color: Colors.black87,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
