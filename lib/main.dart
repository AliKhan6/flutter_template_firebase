import 'package:calkitna_mobile_app/core/constants/colors.dart';
import 'package:calkitna_mobile_app/core/others/screen_utils.dart';
import 'package:calkitna_mobile_app/ui/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: primaryColor,
        primarySwatch: Colors.blue,
      ),
      home: ScreenUtilInit(
        designSize: Size(Get.width, Get.height),
        builder: () => const SplashScreen(),
      ),
    );
  }
}
