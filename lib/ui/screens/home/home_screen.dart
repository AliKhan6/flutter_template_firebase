import 'package:calkitna_mobile_app/core/constants/colors.dart';
import 'package:calkitna_mobile_app/ui/custom_widgets/dots_indicators.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 38.h),
                    child: Container(
                      height: 320.h,
                      // width: 428.w,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12)),
                          color: primaryColor),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0.h, top: 40.0.h),
                            child: const Text(
                              'Plant Info',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Center(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: primaryColor,
                                  radius: 70.h,
                                  child: SvgPicture.asset(
                                    'assets/static_assets/amount_summary.svg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const Text(
                                  'Amount Summary',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 6.h,
                                ),
                                const Text(
                                  'Total: 45,256 Pkr',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Text(
                                  'Last Month: 5,232 Pkr',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.h),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Container(
                          height: 80.h,
                          child: PageView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 35.h, top: 26.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Daily Revenue',
                                          style: TextStyle(
                                              fontSize: 12.h,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          '250.56',
                                          style: TextStyle(
                                              fontSize: 18.h,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 127.w,
                                    ),
                                    const Align(
                                      alignment: Alignment.topCenter,
                                      child: Icon(
                                        Icons.wb_sunny_rounded,
                                        color: Colors.amber,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 35.h, top: 26.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Daily Revenue',
                                          style: TextStyle(
                                              fontSize: 12.h,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          '250.56',
                                          style: TextStyle(
                                              fontSize: 18.h,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 127.w,
                                    ),
                                    const Align(
                                      alignment: Alignment.topCenter,
                                      child: Icon(
                                        Icons.wb_sunny_rounded,
                                        color: Colors.amber,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 35.h, top: 26.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Daily Revenue',
                                          style: TextStyle(
                                              fontSize: 12.h,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          '250.56',
                                          style: TextStyle(
                                              fontSize: 18.h,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 127.w,
                                    ),
                                    const Align(
                                      alignment: Alignment.topCenter,
                                      child: Icon(
                                        Icons.wb_sunny_rounded,
                                        color: Colors.amber,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.h),
                child: Container(
                  height: 245.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: greyColor),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 25.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Plant Capacity',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 7.h,
                                ),
                                Text(
                                  '59.23%',
                                  style: TextStyle(
                                      fontSize: 30.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Container(
                              height: 90.h,
                              child: const VerticalDivider(
                                thickness: 1,
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  'Self-Used Rate',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 7.h,
                                ),
                                Text(
                                  '59.23%',
                                  style: TextStyle(
                                      fontSize: 30.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      IntrinsicHeight(
                        child: Padding(
                          padding: EdgeInsets.only(top: 25.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Plant Capacity',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 7.h,
                                  ),
                                  Text(
                                    '59.23%',
                                    style: TextStyle(
                                        fontSize: 30.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Container(
                                height: 90.h,
                                child: const VerticalDivider(
                                  thickness: 1,
                                ),
                              ),
                              Column(
                                children: [
                                  Text('Self-Used Rate',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500)),
                                  SizedBox(
                                    height: 7.h,
                                  ),
                                  Text(
                                    '59.23%',
                                    style: TextStyle(
                                        fontSize: 30.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 13.h),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Historical Data',
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const Divider(
                thickness: 1,
              ),
              DefaultTabController(
                length: 3,
                child: Column(
                  children: const [
                    TabBar(
                      labelColor: Colors.black,
                      indicatorColor: Colors.black,
                      unselectedLabelStyle: TextStyle(color: Colors.black),
                      tabs: [
                        Tab(
                          text: ("By Month"),
                        ),
                        Tab(
                          text: ("By Year"),
                        ),
                        Tab(
                          text: ("Total"),
                        )
                      ],
                    ),
                    // Container(
                    //   height: 300,
                    //   child: TabBarView(children: [
                    //     Center(
                    //         child: Text(
                    //       "One",
                    //       style: TextStyle(fontSize: 50),
                    //     )),
                    //     Center(
                    //         child: Text(
                    //       "Two",
                    //       style: TextStyle(fontSize: 50),
                    //     )),
                    //     Center(
                    //         child: Text(
                    //       "Three",
                    //       style: TextStyle(fontSize: 50),
                    //     ))
                    //   ]),
                    // )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0, right: 14, top: 14),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 50.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: greyColor,
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
            ],
          ),
        ),
      ),
    );
  }
}
