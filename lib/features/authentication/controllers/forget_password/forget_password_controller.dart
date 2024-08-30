import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:streakzy/common/styles/widgets/loaders/loaders.dart';
import 'package:streakzy/data/repositories/authentication/authentication_repository.dart';
import 'package:streakzy/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:streakzy/utils/constants/image_strings.dart';
import 'package:streakzy/utils/helpers/network_manager.dart';
import 'package:streakzy/utils/popups/full_screen_loader.dart';

class ForgetPasswordController extends GetxController {
  static ForgetPasswordController get instance => Get.find();

  //variables
  final email = TextEditingController();
  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();

  //send reset password mail.
  sendPasswordResetEmail() async {
    try{
        //start loading
      SFullScreenLoader.openLoadingDialog('Processing your request', SImages.docerAnimation);

      //check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        SFullScreenLoader.stopLoading();
        return;
      }

      // Form Validation
      if (!forgetPasswordFormKey.currentState!.validate()) {
        SFullScreenLoader.stopLoading();
        return;
      }

      await AuthenticationRepository.instance.sendPasswordResetEmail(email.text.trim());

      //remove loader
      SFullScreenLoader.stopLoading();

      //Show success screen
      SLoaders.successSnackBar(title: 'email sent', message: 'Reset Password link sent'.tr);

      //redirect
      Get.to(() => resetPassword(email: email.text.trim()));

    }catch(e){
        SFullScreenLoader.stopLoading();
        SLoaders.errorSnackBar(title: 'oops!', message: e.toString());
    }
  }

  resendPasswordResetEmail(String email) async {
    try{
      //start loading
      SFullScreenLoader.openLoadingDialog('Processing your request', SImages.docerAnimation);

      //check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        SFullScreenLoader.stopLoading();
        return;
      }


      await AuthenticationRepository.instance.sendPasswordResetEmail(email);

      //remove loader
      SFullScreenLoader.stopLoading();

      //Show success screen
      SLoaders.successSnackBar(title: 'email resent', message: 'Reset Password link sent'.tr);

    }catch(e){
      SFullScreenLoader.stopLoading();
      SLoaders.errorSnackBar(title: 'oops!', message: e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
