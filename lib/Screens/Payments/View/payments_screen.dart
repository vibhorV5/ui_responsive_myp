import 'package:flutter/material.dart';
import 'package:ui_responsive_myp/Constants/textstyles.dart';

class PaymentsScreen extends StatefulWidget {
  const PaymentsScreen({super.key});

  @override
  State<PaymentsScreen> createState() => _PaymentsScreenState();
}

class _PaymentsScreenState extends State<PaymentsScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color(0xFFBAD350),
      // ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Color(0xFFBAD350),
          height: 70,
        ),
      ),
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //App Bar
              Container(
                padding: EdgeInsets.only(left: 30, right: 30, top: 5),
                width: mediaQuery.width,
                height: 60,
                color: Color(0xFFBAD350),
                child: Container(
                  // color: Colors.red,
                  margin: EdgeInsets.only(bottom: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.flood, size: 30, color: Colors.black87),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            'Vendors',
                            style: TextStyle(
                                fontFamily: 'PoppinsMedium',
                                color: Colors.black87),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.notifications_outlined,
                              size: 25, color: Colors.black87),
                          SizedBox(
                            width: 25,
                          ),
                          Icon(Icons.account_box_outlined,
                              size: 25, color: Colors.black87),
                        ],
                      )
                    ],
                  ),
                ),
              ),

              //Awaiting payements/Awaiting Orders
              Container(
                margin: EdgeInsets.only(top: 20, right: 10, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      // margin: EdgeInsets.only(top: 20, left: 10, right: 20),
                      height: 100,
                      width: 171,
                      decoration: BoxDecoration(
                          color: Color(0xFFBAD350),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    Container(
                      // margin: EdgeInsets.only(top: 20, right: 10),
                      height: 100,
                      width: 171,
                      decoration: BoxDecoration(
                          color: Color(0xFFBAD350),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ],
                ),
              ),

              //Total payment received
              Container(
                margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                height: 150,
                width: mediaQuery.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(top: 10, right: 10),
                          padding: EdgeInsets.only(left: 8),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(5)),
                          // height: 30,
                          // width: 60,
                          child: Row(
                            children: [
                              Text(
                                'Over all',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontFamily: 'PoppinsMedium',
                                  color: Colors.black87,
                                ),
                              ),
                              Container(
                                // color: Colors.red,
                                // margin: EdgeInsets.only(bottom: 40),
                                child: Icon(
                                  Icons.arrow_drop_down_rounded,
                                  size: 30,
                                  color: Colors.black87,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '₹',
                            style: kTextStyleMedium.copyWith(fontSize: 18),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '1020.00',
                            style: kTextStyleMedium.copyWith(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Total Payment Received',
                            style: kTextStyleMedium.copyWith(fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //Pending Payments/Cleared Payments
              Container(
                margin: EdgeInsets.only(top: 30, right: 10, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Pending Payments',
                          style: kTextStyleSemiBold.copyWith(fontSize: 13),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Row(
                      children: [
                        Container(
                          color: Colors.black38,
                          height: 25,
                          width: 2,
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Text(
                          'Cleared Payments',
                          style: kTextStyleSemiBold.copyWith(
                              fontSize: 13, color: Colors.black38),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 10),
                    width: 160,
                    height: 2,
                    color: Color(0xFFBAD350),
                  ),
                ],
              ),

              //List of payments
              Container(
                margin: EdgeInsets.only(top: 5, bottom: 8),
                height: 90,
                width: mediaQuery.width,
                color: Colors.white,
              ),
              Container(
                margin: EdgeInsets.only(top: 5, bottom: 8),
                height: 90,
                width: mediaQuery.width,
                color: Colors.white,
              ),
              Container(
                margin: EdgeInsets.only(top: 5, bottom: 8),
                height: 90,
                width: mediaQuery.width,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
