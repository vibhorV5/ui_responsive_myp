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
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color(0xFFBAD350),
      // ),
      // bottomNavigationBar: BottomAppBar(
      //   child: Container(
      //     padding: EdgeInsets.only(
      //         top: mediaQuery.size.height * 0.014,
      //         bottom: mediaQuery.size.height * 0.009,
      //         left: mediaQuery.size.width * 0.015,
      //         right: mediaQuery.size.width * 0.015),
      //     color: const Color(0xFFBAD350),
      //     height: mediaQuery.size.height * 0.085,
      //     child: SizedBox(
      //       // height: mediaQuery.size.height * 0.068,
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         children: [
      //           // Icon(Icons.home),
      //           BottomAppBarIconNotSelected(
      //             mediaQuery: mediaQuery,
      //             title: 'Home',
      //             iconData: Icons.ac_unit,
      //           ),
      //           BottomAppBarIconNotSelected(
      //             mediaQuery: mediaQuery,
      //             title: 'Materials',
      //             iconData: Icons.account_balance_outlined,
      //           ),
      //           BottomAppBarIconSelected(
      //             mediaQuery: mediaQuery,
      //             title: 'Payments',
      //             iconData: Icons.border_all_sharp,
      //           ),

      //           BottomAppBarIconNotSelected(
      //             mediaQuery: mediaQuery,
      //             title: 'Orders',
      //             iconData: Icons.amp_stories_outlined,
      //           ),
      //           BottomAppBarIconNotSelected(
      //             mediaQuery: mediaQuery,
      //             title: 'Enquiries',
      //             iconData: Icons.info_outline,
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
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
                            'Vendors',
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

              //Awaiting payements/Awaiting Orders
              Container(
                margin: EdgeInsets.only(
                  top: mediaQuery.size.height * 0.025,
                  right: mediaQuery.size.width * 0.025,
                  left: mediaQuery.size.width * 0.025,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Awaiting payments

                    Container(
                      // margin: EdgeInsets.only(top: 20, left: 10, right: 20),
                      padding: EdgeInsets.only(
                          right: mediaQuery.size.width * 0.025,
                          top: mediaQuery.size.height * 0.008),
                      height: mediaQuery.size.height * 0.135,
                      width: mediaQuery.size.width * 0.45,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xffcad3a2), Color(0xFFBAD350)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),

                        // color: Color(0xFFBAD350),
                        borderRadius: BorderRadius.circular(
                          mediaQuery.size.height * 0.006,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.water_drop_outlined,
                                size: mediaQuery.size.height * 0.03,
                                color: Colors.grey.shade800,
                              )
                            ],
                          ),
                          Text(
                            '₹  522295.50',
                            style: kTextStyleMedium.copyWith(
                                fontSize: mediaQuery.size.height * 0.019),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: mediaQuery.size.height * 0.03),
                            child: Text(
                              'Awaiting Payments',
                              style: kTextStyleMedium.copyWith(
                                  fontSize: mediaQuery.size.height * 0.0135),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //Awaiting orders
                    Container(
                      // margin: EdgeInsets.only(top: 20, left: 10, right: 20),
                      padding: EdgeInsets.only(
                          right: mediaQuery.size.width * 0.025,
                          top: mediaQuery.size.height * 0.008),
                      height: mediaQuery.size.height * 0.135,
                      width: mediaQuery.size.width * 0.45,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xffcad3a2), Color(0xFFBAD350)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),

                        // color: Color(0xFFBAD350),
                        borderRadius: BorderRadius.circular(
                          mediaQuery.size.height * 0.006,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.content_paste,
                                size: mediaQuery.size.height * 0.03,
                                color: Colors.grey.shade800,
                              )
                            ],
                          ),
                          Text(
                            '4.00',
                            style: kTextStyleMedium.copyWith(
                                fontSize: mediaQuery.size.height * 0.019),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: mediaQuery.size.height * 0.03),
                            child: Text(
                              'Awaiting Orders',
                              style: kTextStyleMedium.copyWith(
                                  fontSize: mediaQuery.size.height * 0.0135),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //Total payment received
              Container(
                margin: EdgeInsets.only(
                  top: mediaQuery.size.height * 0.025,
                  right: mediaQuery.size.width * 0.025,
                  left: mediaQuery.size.width * 0.025,
                ),
                height: mediaQuery.size.height * 0.185,
                width: mediaQuery.size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    mediaQuery.size.height * 0.006,
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(
                            top: mediaQuery.size.height * 0.015,
                            right: mediaQuery.size.height * 0.015,
                          ),
                          padding: EdgeInsets.only(
                            left: mediaQuery.size.width * 0.023,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(
                              mediaQuery.size.height * 0.006,
                            ),
                          ),
                          // height: 30,
                          // width: 60,
                          child: Row(
                            children: [
                              Text(
                                'Over all',
                                style: TextStyle(
                                  fontSize: mediaQuery.size.height * 0.014,
                                  fontFamily: 'PoppinsMedium',
                                  color: Colors.grey.shade800,
                                ),
                              ),
                              Icon(
                                Icons.arrow_drop_down_rounded,
                                size: mediaQuery.size.height * 0.04,
                                color: Colors.grey.shade800,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(top: mediaQuery.size.height * 0.025),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '₹',
                            style: kTextStyleMedium.copyWith(
                                fontSize: mediaQuery.size.height * 0.025),
                          ),
                          SizedBox(
                            width: mediaQuery.size.width * 0.03,
                          ),
                          Text(
                            '1020.00',
                            style: kTextStyleMedium.copyWith(
                                fontSize: mediaQuery.size.height * 0.022),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(top: mediaQuery.size.height * 0.01),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Total Payment Received',
                            style: kTextStyleMedium.copyWith(
                                fontSize: mediaQuery.size.height * 0.016),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //Pending Payments/Cleared Payments
              Container(
                margin: EdgeInsets.only(
                  top: mediaQuery.size.height * 0.035,
                  right: mediaQuery.size.width * 0.025,
                  left: mediaQuery.size.width * 0.025,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Pending Payments',
                          style: kTextStyleSemiBold.copyWith(
                              fontSize: mediaQuery.size.height * 0.015),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: mediaQuery.size.width * 0.15,
                    ),
                    Row(
                      children: [
                        Container(
                          color: Colors.black38,
                          height: mediaQuery.size.height * 0.03,
                          width: mediaQuery.size.width * 0.005,
                        ),
                        SizedBox(
                          width: mediaQuery.size.width * 0.04,
                        ),
                        Text(
                          'Cleared Payments',
                          style: kTextStyleSemiBold.copyWith(
                            fontSize: mediaQuery.size.height * 0.015,
                            color: Colors.black38,
                          ),
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
                    margin: EdgeInsets.only(
                      right: mediaQuery.size.width * 0.025,
                      left: mediaQuery.size.width * 0.025,
                      top: mediaQuery.size.height * 0.015,
                    ),
                    width: mediaQuery.size.width * 0.41,
                    height: mediaQuery.size.width * 0.005,
                    color: const Color(0xFFBAD350),
                  ),
                ],
              ),

              //List of payments
              Container(
                margin: EdgeInsets.only(
                  top: mediaQuery.size.height * 0.006,
                  bottom: mediaQuery.size.height * 0.008,
                ),
                padding: EdgeInsets.only(
                    left: mediaQuery.size.width * 0.05,
                    right: mediaQuery.size.width * 0.05,
                    bottom: mediaQuery.size.height * 0.015),
                height: mediaQuery.size.height * 0.115,
                width: mediaQuery.size.width,
                color: Colors.white,
                child: Container(
                  padding: EdgeInsets.only(
                    top: mediaQuery.size.height * 0.014,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding:
                                EdgeInsets.all(mediaQuery.size.width * 0.001),
                            alignment: Alignment.center,
                            height: mediaQuery.size.height * 0.032,
                            width: mediaQuery.size.width * 0.21,
                            color: Colors.grey.shade200,
                            child: Text(
                              '#PAC000080',
                              style: kTextStyleMedium.copyWith(
                                  fontSize: mediaQuery.size.height * 0.013),
                            ),
                          ),
                          Text(
                            '₹  10000.50',
                            style: kTextStyleSemiBold.copyWith(
                                fontSize: mediaQuery.size.height * 0.02),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Order Date: 03-10-2022 02:42PM',
                            style: kTextStyleSemiBold.copyWith(
                                color: Colors.black38,
                                fontSize: mediaQuery.size.height * 0.014),
                          ),
                          Text(
                            'Mumbai, Maharashtra',
                            style: kTextStyleSemiBold.copyWith(
                                color: Colors.black38,
                                fontSize: mediaQuery.size.height * 0.014),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: mediaQuery.size.height * 0.006,
                  bottom: mediaQuery.size.height * 0.008,
                ),
                padding: EdgeInsets.only(
                    left: mediaQuery.size.width * 0.05,
                    right: mediaQuery.size.width * 0.05,
                    bottom: mediaQuery.size.height * 0.015),
                height: mediaQuery.size.height * 0.115,
                width: mediaQuery.size.width,
                color: Colors.white,
                child: Container(
                  padding: EdgeInsets.only(
                    top: mediaQuery.size.height * 0.014,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding:
                                EdgeInsets.all(mediaQuery.size.width * 0.001),
                            alignment: Alignment.center,
                            height: mediaQuery.size.height * 0.032,
                            width: mediaQuery.size.width * 0.21,
                            color: Colors.grey.shade200,
                            child: Text(
                              '#PAC000079',
                              style: kTextStyleMedium.copyWith(
                                  fontSize: mediaQuery.size.height * 0.013),
                            ),
                          ),
                          Text(
                            '₹  0.00',
                            style: kTextStyleSemiBold.copyWith(
                                fontSize: mediaQuery.size.height * 0.02),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Order Date: 03-10-2022 01:00PM',
                            style: kTextStyleSemiBold.copyWith(
                                color: Colors.black38,
                                fontSize: mediaQuery.size.height * 0.014),
                          ),
                          Text(
                            'Mumbai, Maharashtra',
                            style: kTextStyleSemiBold.copyWith(
                                color: Colors.black38,
                                fontSize: mediaQuery.size.height * 0.014),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: mediaQuery.size.height * 0.006,
                  bottom: mediaQuery.size.height * 0.008,
                ),
                padding: EdgeInsets.only(
                    left: mediaQuery.size.width * 0.05,
                    right: mediaQuery.size.width * 0.05,
                    bottom: mediaQuery.size.height * 0.015),
                height: mediaQuery.size.height * 0.115,
                width: mediaQuery.size.width,
                color: Colors.white,
                child: Container(
                  padding: EdgeInsets.only(
                    top: mediaQuery.size.height * 0.014,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding:
                                EdgeInsets.all(mediaQuery.size.width * 0.001),
                            alignment: Alignment.center,
                            height: mediaQuery.size.height * 0.032,
                            width: mediaQuery.size.width * 0.21,
                            color: Colors.grey.shade200,
                            child: Text(
                              '#PAC000071',
                              style: kTextStyleMedium.copyWith(
                                  fontSize: mediaQuery.size.height * 0.013),
                            ),
                          ),
                          Text(
                            '₹  51250.00',
                            style: kTextStyleSemiBold.copyWith(
                                fontSize: mediaQuery.size.height * 0.02),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Order Date: 30-09-2022 07:23PM',
                            style: kTextStyleSemiBold.copyWith(
                                color: Colors.black38,
                                fontSize: mediaQuery.size.height * 0.014),
                          ),
                          Text(
                            'Mumbai, Maharashtra',
                            style: kTextStyleSemiBold.copyWith(
                                color: Colors.black38,
                                fontSize: mediaQuery.size.height * 0.014),
                          )
                        ],
                      ),
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

class BottomAppBarIconSelected extends StatelessWidget {
  const BottomAppBarIconSelected({
    Key? key,
    required this.mediaQuery,
    required this.iconData,
    required this.title,
  }) : super(key: key);

  final MediaQueryData mediaQuery;
  final IconData iconData;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          iconData,
          size: mediaQuery.size.height * 0.03,
        ),
        // SizedBox(
        //   height: mediaQuery.size.height * 0.002,
        // ),
        Text(
          title,
          style: kTextStyleMedium.copyWith(
            color: Colors.white,
            fontSize: mediaQuery.size.height * 0.014,
          ),
        ),
      ],
    );
  }
}

class BottomAppBarIconNotSelected extends StatelessWidget {
  const BottomAppBarIconNotSelected({
    Key? key,
    required this.mediaQuery,
    required this.iconData,
    required this.title,
  }) : super(key: key);

  final MediaQueryData mediaQuery;
  final IconData iconData;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          iconData,
          size: mediaQuery.size.height * 0.03,
        ),
        Text(
          title,
          style: kTextStyleMedium.copyWith(
            fontSize: mediaQuery.size.height * 0.014,
          ),
        ),
      ],
    );
  }
}
