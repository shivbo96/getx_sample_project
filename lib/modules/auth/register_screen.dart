import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/routes/app_pages.dart';
import 'package:getx_sample/shared/shared.dart';
import 'auth_controller.dart';

class RegisterScreen extends GetResponsiveView<AuthController> {
  RegisterScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 25.0),
          child: Center(
              child: InkWell(
            onTap: () {
              Get.toNamed(Routes.HOME);
            },
            child: Text(
              "Click Here===>>>",
              style: TextStyle(
                  color: ColorConstants.black,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w500,
                  fontSize: 18.0),
            ),
          )),
        ),
      ),
    );
  }
}
