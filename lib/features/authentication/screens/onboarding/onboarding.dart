import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:streakzy/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:streakzy/features/authentication/screens/onboarding/widgets/onbarding_page.dart';
import 'package:streakzy/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:streakzy/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:streakzy/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:streakzy/utils/constants/colors.dart';
import 'package:streakzy/utils/constants/image_strings.dart';
import 'package:streakzy/utils/constants/sizes.dart';
import 'package:streakzy/utils/constants/text_strings.dart';
import 'package:streakzy/utils/device/device_utility.dart';
import 'package:streakzy/utils/helpers/helper_functions.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: SImages.onBoardingImage1,
                title: STexts.onBoardingTitle1,
                subTitle: STexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: SImages.onBoardingImage2,
                title: STexts.onBoardingTitle2,
                subTitle: STexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: SImages.onBoardingImage3,
                title: STexts.onBoardingTitle3,
                subTitle: STexts.onBoardingSubTitle3,
              ),
            ],
          ),
          const OnBoardingSkip(),


          const OnboardingDotNavigation(),

          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}




