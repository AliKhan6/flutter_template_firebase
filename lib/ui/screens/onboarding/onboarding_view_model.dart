import 'package:calkitna_mobile_app/core/constants/colors.dart';
import 'package:calkitna_mobile_app/core/constants/strings.dart';
import 'package:calkitna_mobile_app/core/enums/view_state.dart';
import 'package:calkitna_mobile_app/core/models/onboarding.dart';
import 'package:calkitna_mobile_app/core/view_models.dart/base_view_model.dart';
import 'package:flutter/material.dart';

class OnboardingViewModel extends BaseViewModel {
  int? currentIndexPage;
  PageController? onboardController;

  OnboardingViewModel() {
    currentIndexPage = 0;
    onboardController = PageController();
    // injectOnboardings();
  }

  setCurrentPageIndex(value) {
    currentIndexPage = value;
    setState(ViewState.idle);
  }

  animateToPage(int index) {
    onboardController!.animateToPage(index,
        curve: Curves.easeIn, duration: const Duration(milliseconds: 300));
  }

  List<Onboarding> onboardings = [
    Onboarding(
        image: '$staticAsset/onboarding1.png',
        buttonColor: borderColor,
        backgroundColor: const Color(0xFFF2A950),
        title: 'Tracking your daily diet.',
        description:
            'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod sed tempor invidu nt ut labore et dolore magna aliquyam erat, sed diam voluptua.'),
    Onboarding(
        image: '$staticAsset/onboarding2.png',
        backgroundColor: Colors.white,
        buttonColor: const Color(0xFF362618),
        title: 'Monitor the consumption targets accordingly.',
        description:
            'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod sed tempor invidu diam voluptua.'),
    Onboarding(
        image: '$staticAsset/onboarding3.png',
        backgroundColor: const Color(0xFF2D7366),
        buttonColor: Colors.white,
        title: 'Regular nutrition reports to set new diet targets.',
        description:
            'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod sed tempor invidu diam voluptua.'),
  ];

  // injectOnboardings() {
  //   onboardings.add(
  //     Onboarding(
  //       image: '$staticAsset/onboarding1_image.png',
  //       backgroundColor: Color(0xFFF2A950),
  //       backgroundImage: '$staticAsset/onboarding1_background.png',
  //       title: 'Onboarding 1',
  //       description: 'Descripton onboarding 1'
  //     ),
  //   );
  // }

  // getAllOnboardings() async {
  //   setState(ViewState.loading);
  //   onboardings.add(OnBoarding(
  //     imageUrl: '$assets/Walkthrough.png',
  //     descriptionEn:
  //         'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh  ',
  //     titleEn: 'Browse',
  //   ));
  //   onboardings.add(OnBoarding(
  //     imageUrl: '$assets/Walkthrough2.png',
  //     descriptionEn:
  //         'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh  ',
  //     titleEn: 'Order',
  //   ));

  //   onboardings.add(OnBoarding(
  //     imageUrl: '$assets/Walkthrough3.png',
  //     descriptionEn:
  //         'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh  ',
  //     titleEn: 'Get!',
  //   ));
  //   setState(ViewState.idle);
  // }

}
