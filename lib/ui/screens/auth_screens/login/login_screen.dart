import 'package:calkitna_mobile_app/core/constants/strings.dart';
import 'package:calkitna_mobile_app/core/constants/style.dart';
import 'package:calkitna_mobile_app/core/others/screen_utils.dart';
import 'package:calkitna_mobile_app/ui/custom_widgets/custom_button.dart';
import 'package:calkitna_mobile_app/ui/custom_widgets/custom_text_field.dart';
import 'package:calkitna_mobile_app/ui/custom_widgets/social_auth_button.dart';
import 'package:calkitna_mobile_app/ui/screens/auth_screens/login/login_view_model.dart';
import 'package:calkitna_mobile_app/ui/screens/auth_screens/signup/signup_screen.dart';
import 'package:calkitna_mobile_app/ui/screens/base_screen/base_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'dart:io' show Platform;

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginViewModel(),
      child: Consumer<LoginViewModel>(
        builder: (context, model, child) {
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Container(
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 27.w, right: 27.w, top: 35.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        /// title
                        // SizedBox(
                        //   height: 113.h,
                        // ),

                        Image.asset(
                          'assets/static_assets/logo_greenwend.png',
                          scale: 3.2,
                        ),
                        SizedBox(height: 40.h),
                        Text(
                          'Welcome to GreenWendEnergy',
                          style: headingTextStyleRoboto.copyWith(
                              fontSize: 18.sp, color: const Color(0xFF756DB8)),
                        ),
                        SizedBox(height: 3.h),
                        Text(
                          'Login to your Account to keep an \n eye on your Plant Statistics',
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          style: headingTextStyleRoboto.copyWith(
                              fontWeight: FontWeight.normal,
                              fontSize: 16.sp,
                              color: const Color(0xFF756DB8)),
                        ),
                        SizedBox(height: 40.h),

                        ///
                        /// Text fields
                        textFields(model),
                        SizedBox(
                          height: 30.h,
                        ),

                        ///
                        /// Login button
                        CustomButton(
                          text: 'LOGIN',
                          buttonColor: const Color(0xFF5A55C3),
                          onTap: () {
                            Get.offAll(() => BaseScreen());
                          },
                          textColor: Colors.white,
                        ),
                        // SizedBox(height: 166.h),
                        // Center(
                        //   child: Text('Or continue with',
                        //       style: bodyTextStyleAssistant.copyWith(
                        //           fontSize: 14.sp, color: const Color(0xFF707070))),
                        // ),

                        ///
                        /// Social login buttons
                        // socailAuthButtons(model),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  textFields(LoginViewModel model) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// email text field
        // Text(
        //   'Email address',
        //   style: bodyTextStyleRoboto.copyWith(fontSize: 14.sp),
        // ),
        // SizedBox(height: 8.h),
        CustomTextField(
          fontSize: 12.sp,
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12.h),
          // fillColor: const Color(0xFFEBEBEB),
          onChange: (value) {},
          inputType: TextInputType.emailAddress,
          hintText: 'Email Address',
          disableBorder: true,
        ),
        SizedBox(height: 10.h),

        /// password filed

        // Text(
        //   'Password',
        //   style: bodyTextStyleRoboto.copyWith(fontSize: 14.sp),
        // ),

        CustomTextField(
          fontSize: 12.sp,
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12.h),
          // fillColor: const Color(0xFFEBEBEB),
          onChange: (value) {},
          inputType: TextInputType.visiblePassword,
          disableBorder: true,
          hintText: 'Password',
          obscure: model.isShowPassword,
          suffixIcon: GestureDetector(
            onTap: () {
              model.showPassword();
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Image.asset(
                model.isShowPassword
                    ? '$staticAsset/password_not_show.png'
                    : '$staticAsset/password.png',
                width: 16.28.w,
                height: 16.28.h,
                color: const Color(0xFF756DB8),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 6.h,
        ),
        Align(
            alignment: Alignment.centerRight,
            child: Text(
              'Forgot Password?',
              style: TextStyle(
                fontSize: 12.sp,
                color: Color(0xff5A55C3),
              ),
            ))
      ],
    );
  }

  socailAuthButtons(LoginViewModel model) {
    return Column(
      children: [
        // Row(
        //   children: [
        //     const SocialAuthButton(
        //       onTap: null,
        //       image: '$staticAsset/google.png',
        //     ),
        //     Platform.isIOS
        //         ? Row(children: [
        //             SizedBox(width: 10.w),
        //             const SocialAuthButton(
        //               onTap: null,
        //               image: '$staticAsset/apple.png',
        //             ),
        //           ])
        //         : Container(),
        //     SizedBox(width: 10.w),
        //     const SocialAuthButton(
        //       onTap: null,
        //       image: '$staticAsset/facebook.png',
        //     ),
        //   ],
        // ),
        SizedBox(height: 29.h),
        GestureDetector(
          onTap: () => Get.off(() => const SignUpScreen()),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "If you don't have an account, try",
              style: bodyTextStyleAssistant.copyWith(
                  fontSize: 14.sp, color: const Color(0xFF707070)),
            ),
            SizedBox(width: 7.w),
            Text('Signing Up here.',
                style: bodyTextStyleAssistant.copyWith(
                    color: const Color(0xFF756DB8),
                    fontSize: 14.sp,
                    decoration: TextDecoration.underline))
          ]),
        )
      ],
    );
  }
}
