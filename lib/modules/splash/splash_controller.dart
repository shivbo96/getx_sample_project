import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../routes/app_pages.dart';
import '../../shared/constants/storage.dart';

class SplashController extends GetxController {
  @override
  void onReady() async {
    super.onReady();

    await Future.delayed(const Duration(milliseconds: 2000));

    try {
      if (Preference.getBool(Preference.IS_USER_LOGIN)) {
        Get.offAllNamed(Routes.HOME);
      } else {
        Get.offAllNamed(Routes.REGISTER);
      }
    } catch (e) {
      Get.offAllNamed(Routes.REGISTER);
    }
  }
}
