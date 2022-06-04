import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:getx_sample/shared/constants/constants.dart';

import '../../models/response/error_response.dart';
import '../../routes/app_pages.dart';
import '../../shared/utils/common_widget.dart';

FutureOr<dynamic> responseInterceptor(
    Request request, Response response) async {
  EasyLoading.dismiss();
  //
  // CommonWidget.loader(isShow: false);
  debugPrint('response.statusCode ${response.statusCode}');
  if (response.statusCode != 200) {
    handleErrorStatus(response);
    return;
  }
  debugPrint('response $response');
  return response;
}

void handleErrorStatus(Response response) {
  switch (response.statusCode) {
    case 400:
      final message = ErrorResponse.fromJson(response.body);
      CommonWidget.toast(message.message.toString());
      break;
    case 401:
      Preference.clearPref();
      Get.offAllNamed(Routes.REGISTER);
      break;
    default:
      final message = ErrorResponse.fromJson(response.body);
      CommonWidget.toast(message.message.toString());
      break;
  }
  return;
}
