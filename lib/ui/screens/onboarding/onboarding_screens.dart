import 'package:calkitna_mobile_app/core/constants/strings.dart';
import 'package:calkitna_mobile_app/core/constants/style.dart';
import 'package:calkitna_mobile_app/ui/custom_widgets/dots_indicators.dart';
import 'package:calkitna_mobile_app/ui/custom_widgets/image_container.dart';
import 'package:calkitna_mobile_app/ui/custom_widgets/out_lined_border_button.dart';
import 'package:calkitna_mobile_app/ui/screens/auth_screens/login/login_screen.dart';
import 'package:calkitna_mobile_app/ui/screens/auth_screens/signup/signup_screen.dart';
import 'package:calkitna_mobile_app/ui/screens/onboarding/onboarding_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OnboardingViewModel(),
      child: Consumer<OnboardingViewModel>(
        builder: (context, model, child) {
          return Scaffold(
            body: SizedBox(
              height: 1.sh,
              child: Stack(
                children: [
                  PageView.builder(
                    controller: model.onboardController,
                    itemCount: model.onboardings.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 1.sh,
                        width: 1.sw,
                        color: model.onboardings[index].backgroundColor,
                        child: Column(
                          children: [
                            ///
                            /// Top images
                            ///
                            SizedBox(
                              height: 0.6.sh,
                              child: Center(
                                child: Padding(
                                  padding: index == 0
                                      ? EdgeInsets.zero
                                      : const EdgeInsets.symmetric(
                                          horizontal: 40.0),
                                  child: ImageContainer(
                                    assetImage:
                                        '${model.onboardings[index].image}',
                                    height: index == 0
                                        ? 394.h
                                        : index == 1
                                            ? 268.h
                                            : 290.h,
                                    fit: index == 2
                                        ? BoxFit.contain
                                        : BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),

                            ///
                            /// Onboarding details and next previous buttons
                            ///
                            onboardingDetailsAndButtons(model, index),
                          ],
                        ),
                      );
                    },
                    onPageChanged: (int index) {
                      debugPrint(index.toString());
                      model.setCurrentPageIndex(index);
                    },
                  ),

                  ///
                  /// Dots indicators
                  ///
                  Positioned(
                    top: 1.sh - 170.h,
                    left: 0.39.sw,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            height: 1.5.h,
                            width: 1.sw,
                            child: ListView.builder(
                                padding: EdgeInsets.zero,
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemCount: model.onboardings.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 7.7),
                                    child: Container(
                                      width: 22.33.w,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(2),
                                          border: Border.all(width: 1.5),
                                          color: index == model.currentIndexPage
                                              ? model
                                                  .onboardings[
                                                      model.currentIndexPage!]
                                                  .buttonColor
                                              : model
                                                  .onboardings[
                                                      model.currentIndexPage!]
                                                  .buttonColor!
                                                  .withOpacity(0.3)),
                                    ),
                                  );
                                })),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  onboardingDetailsAndButtons(OnboardingViewModel model, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          Text('${model.onboardings[index].title}',
              style: subHeadingTextStyleRoboto.copyWith(
                  color: model.onboardings[index].buttonColor, fontSize: 24.sp),
              textAlign: TextAlign.center),
          SizedBox(height: 23.h),
          Text('${model.onboardings[index].description}',
              style: bodyTextStyleAssistant.copyWith(
                  color: model.onboardings[index].buttonColor, fontSize: 15.sp),
              textAlign: TextAlign.center),
          SizedBox(height: 80.h),
          index == 0
              ? OutLinedBorderButton(
                  onTap: () {
                    model.animateToPage(model.currentIndexPage! + 1);
                  },
                  color: model.onboardings[index].buttonColor,
                  text: 'Next',
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutLinedBorderButton(
                      onTap: () =>
                          model.animateToPage(model.currentIndexPage! - 1),
                      color: model.onboardings[index].buttonColor,
                      text: 'Previous',
                    ),
                    OutLinedBorderButton(
                      onTap: index == 2
                          ? () => Get.offAll(() => const SignUpScreen())
                          : () =>
                              model.animateToPage(model.currentIndexPage! + 1),
                      color: model.onboardings[index].buttonColor,
                      text: index == 2 ? 'Proceed' : 'Next',
                    )
                  ],
                ),
        ],
      ),
    );
  }
}
