import 'package:flutter/material.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:streakzy/common/styles/spacing_styles.dart';
import 'package:streakzy/common/styles/widgets/login_signup/form_divider.dart';
import 'package:streakzy/common/styles/widgets/login_signup/social_buttons.dart';
import 'package:streakzy/features/authentication/screens/onboarding/login/widgets/login_form.dart';
import 'package:streakzy/features/authentication/screens/onboarding/login/widgets/login_header.dart';
// import 'package:streakzy/features/authentication/screens/onboarding/login/widgets/login_header.dart';
import 'package:streakzy/utils/constants/colors.dart';
import 'package:streakzy/utils/constants/image_strings.dart';
import 'package:streakzy/utils/constants/sizes.dart';
import 'package:streakzy/utils/constants/text_strings.dart';
import 'package:streakzy/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = SHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [

               const SLoginHeader(),
              //Form
              const SLoginForm(),

              //divider

              SFormDivider(dividerText: STexts.orSignInWith.capitalize!),

              const SizedBox(height: SSizes.spaceBtwSections),

              //footer
              const SSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}








