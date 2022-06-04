import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../api/api_repository.dart';
import '../../routes/app_pages.dart';
import '../../shared/utils/focus.dart';

class AuthController extends GetxController {
  final ApiRepository apiRepository;

  AuthController({required this.apiRepository});

  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
  final registerFirstNameController = TextEditingController();
  final registerLastNameController = TextEditingController();
  final registerEmailController = TextEditingController();
  final registerPasswordController = TextEditingController();
  final registerConfirmPasswordController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void register(BuildContext context) async {
    AppFocus.unfocus(context);
    if (registerFormKey.currentState!.validate()) {
      // final res = await apiRepository.register();
      // debugPrint("response is =>${res?.id.toString()}");

      moveHome(context);

      // Get.toNamed(Routes.LOGIN + Routes.REGISTER_SUCCESS, arguments: this);
    }
  }

  @override
  void onClose() {
    super.onClose();
    registerEmailController.dispose();
    registerPasswordController.dispose();
    registerConfirmPasswordController.dispose();
    registerFirstNameController.dispose();
    registerLastNameController.dispose();
  }

  moveHome(BuildContext context) {
    AppFocus.unfocus(context);
    Get.offAllNamed(Routes.HOME);
  }
}
