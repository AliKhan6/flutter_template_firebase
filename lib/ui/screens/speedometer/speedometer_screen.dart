import 'package:calkitna_mobile_app/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpeedometerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello Mr. Khan Baba!',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'House No. 525, Street no. 7, Sector D, Phase 4...',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 20.h,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(20.h),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                  ),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: [
                                  Container(
                                    height: 27.15.h,
                                    width: 18.67.w,
                                    child: Image.asset(
                                        'assets/static_assets/charging.png'),
                                  ),
                                  // Icon(Icons.charging_station_rounded),
                                  Text('12.24',
                                      style: TextStyle(
                                          fontSize: 40.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF5A55C3))),
                                ],
                              ),
                              const Text('May 26, 2022  8:07PM',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey))
                            ],
                          ),
                        ),

                        ///
                        /// card
                        ///

                        Material(
                          elevation: 0,
                          child: Container(
                            margin: EdgeInsets.zero,
                            padding: EdgeInsets.zero,
                            width: 140.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(19.h),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xff5A55C3),
                                  Color(0xff5A55C3).withOpacity(0.8),
                                ],
                              ),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsets.only(top: 10.0.h, left: 24.0.h),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                          'assets/static_assets/cloud.svg'),
                                      // Icon(
                                      //   Icons.cloud,
                                      //   color: Colors.white,
                                      //   size: 40.h,
                                      // ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                        size: 20.h,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5.3.h,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '35',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                            fontSize: 40.sp),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Text(
                                          '°C',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18.sp),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5.3.h,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 34.h,
            ),

            ///
            ///
            /// Date portion
            ///
            ///

            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Today',
                        style: TextStyle(fontSize: 15.sp, color: Colors.grey),
                      ),
                      Text(
                        'This month',
                        style: TextStyle(fontSize: 15.sp, color: Colors.grey),
                      ),
                      Text(
                        'Lifetime',
                        style: TextStyle(fontSize: 15.sp, color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            '565 ',
                            style: TextStyle(fontSize: 18.sp),
                          ),
                          Text(
                            'Wh',
                            style: TextStyle(fontSize: 16.sp),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '2056.98 ',
                            style: TextStyle(fontSize: 18.sp),
                          ),
                          Text(
                            'kWh',
                            style: TextStyle(fontSize: 16.sp),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                ' 45.32 ',
                                style: TextStyle(fontSize: 18.sp),
                              ),
                              Text(
                                'mWh',
                                style: TextStyle(fontSize: 16.sp),
                              ),
                            ],
                          ),
                          Text('Pkr45,000',
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  color: Colors.green,
                                  fontWeight: FontWeight.w500))
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 24.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceAround,
            //     children: [
            // Text(
            //   'Today',
            //   style: TextStyle(fontSize: 15.sp),
            // ),
            // Text(
            //   'This month',
            //   style: TextStyle(fontSize: 15.sp),
            // ),
            // Text(
            //   'lifetime',
            //   style: TextStyle(fontSize: 15.sp),
            // ),
            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     Text(
            //       'Today',
            //       style: TextStyle(fontSize: 15.sp),
            //     ),
            //     Text(
            //       '565 Wh',
            //       style: TextStyle(
            //           fontSize: 20.sp, fontWeight: FontWeight.bold),
            //     ),
            //   ],
            // ),
            // SizedBox(
            //   width: 10.w,
            // ),
            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Text(
            //       'This month',
            //       style: TextStyle(fontSize: 15.sp),
            //     ),
            //     Text(
            //       '2056.98 kWh',
            //       style: TextStyle(
            //           fontSize: 20.sp, fontWeight: FontWeight.bold),
            //     ),
            //   ],
            // ),
            // SizedBox(
            //   width: 10.w,
            // ),
            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     Text(
            //       'lifetime',
            //       style: TextStyle(fontSize: 15.sp),
            //     ),
            //     Text(
            //       '45.32 mWh',
            //       style: TextStyle(
            //           fontSize: 20.sp, fontWeight: FontWeight.bold),
            //     ),
            //     Text(
            //       'Pkr45,000',
            //       style: TextStyle(
            //           fontSize: 18.sp,
            //           color: Colors.green,
            //           fontWeight: FontWeight.bold),
            //     )
            //   ],
            // )
            //     ],
            //   ),
            // ),

            ///
            ///  main container
            ///

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [
                        0.6,
                        0.9,
                      ],
                      colors: [
                        Color(0xffEDECF5),
                        Colors.white,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 14.0, right: 14, top: 14),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        height: 50.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(Icons.arrow_back, color: Colors.grey),
                            Center(
                              child: Text('Today, 26/5/2022'),
                            ),
                            Icon(Icons.arrow_forward, color: Colors.grey)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),

                    ///
                    /// main Container
                    ///
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '565',
                                        style: TextStyle(fontSize: 40.sp),
                                      ),
                                      Text(
                                        'Wh',
                                        style: TextStyle(fontSize: 18.sp),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'System Production',
                                    style: TextStyle(fontSize: 15.sp),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 27.w,
                              ),
                              Container(
                                height: 142.21.h,
                                width: 10.w,
                                child: Image.asset(
                                    'assets/static_assets/pen_icon.png'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 19.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              '395.5',
                                              style: TextStyle(fontSize: 18.sp),
                                            ),
                                            Text(
                                              'wh',
                                              style: TextStyle(fontSize: 16.sp),
                                            ),
                                            SizedBox(
                                              width: 17.w,
                                            ),
                                            Text(
                                              '70%',
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color:
                                                      const Color(0xFF5A55C3)),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          'Self-Consumed',
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 22.h,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              '73.5',
                                              style: TextStyle(fontSize: 18.sp),
                                            ),
                                            Text(
                                              'wh',
                                              style: TextStyle(fontSize: 16.sp),
                                            ),
                                            SizedBox(
                                              width: 17.w,
                                            ),
                                            Text(
                                              '13%',
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color:
                                                      const Color(0xffF6951D)),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          'Battery-Charging',
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 22.h,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              '96.05',
                                              style: TextStyle(fontSize: 18.sp),
                                            ),
                                            Text(
                                              'wh',
                                              style: TextStyle(fontSize: 16.sp),
                                            ),
                                            SizedBox(
                                              width: 17.w,
                                            ),
                                            Text(
                                              '17%',
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color:
                                                      const Color(0xFF5EA410)),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          'Grid-Export',
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 60.h,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '5.12',
                                        style: TextStyle(fontSize: 40.sp),
                                      ),
                                      Text(
                                        'kWh',
                                        style: TextStyle(fontSize: 18.sp),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Total-Consumed',
                                    style: TextStyle(fontSize: 15.sp),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 43.w,
                              ),
                              Container(
                                height: 142.21.h,
                                width: 10.w,
                                child: Image.asset(
                                    'assets/static_assets/pen_icon1.png'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 19.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              '3.55',
                                              style: TextStyle(fontSize: 18.sp),
                                            ),
                                            Text(
                                              'kWh',
                                              style: TextStyle(fontSize: 16.sp),
                                            ),
                                            SizedBox(
                                              width: 17.w,
                                            ),
                                            Text(
                                              '69%',
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color:
                                                      const Color(0xFF5A55C3)),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          'Self-Consumed',
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 22.h,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              '1.57',
                                              style: TextStyle(fontSize: 18.sp),
                                            ),
                                            Text(
                                              'kWh',
                                              style: TextStyle(fontSize: 16.sp),
                                            ),
                                            SizedBox(
                                              width: 17.w,
                                            ),
                                            Text(
                                              '30.6%',
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color:
                                                      const Color(0xFFF12A2A)),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          'Grid-Consumed',
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 19.4.h,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),

            ///
            /// third container portion
            ///

            Padding(
              padding:
                  const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 20.0),
              child: Container(
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xffEDECF5),
                        Colors.white,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Charging',
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xffF6951D)),
                              ),
                              Text(
                                'Battery Status',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'No. of Batteries:',
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    '2',
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xffF6951D)),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Battery Capacity:',
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    '220',
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xffF6951D)),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '72%',
                                style: TextStyle(
                                    fontSize: 40.sp,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xffF6951D)),
                              ),
                              Text(
                                'Battery Level',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                  'assets/static_assets/battery.svg'),
                              SizedBox(
                                width: 24.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '73.5 Wh',
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w500,
                                        color: blackColor),
                                  ),
                                  Text(
                                    'Battery-Charging',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 3.h,
                                  ),
                                  Text(
                                    '25 minutes to full Charge',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                              // Row(
                              //   children: [
                              //     Text(
                              //       'Battery Capacity:',
                              //       style: TextStyle(
                              //           fontSize: 15.sp,
                              //           fontWeight: FontWeight.w500,
                              //           color: Colors.grey),
                              //     ),
                              //     Text(
                              //       '220',
                              //       style: TextStyle(
                              //           fontSize: 20.sp,
                              //           fontWeight: FontWeight.bold,
                              //           color: const Color(0xffF6951D)),
                              //     ),
                              //   ],
                              // ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
