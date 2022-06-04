import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get_connect/http/src/request/request.dart';

FutureOr<Request> requestInterceptor(request) async {
  // final token = StorageService.box.pull(StorageItems.accessToken);

  // request.headers['timezone_offset'] = '-330';
  // request.headers['client_secret'] = '${ApiConstants.clientSecret}';

  debugPrint('request $request');

  EasyLoading.show(status: 'loading...');
  // CommonWidget.loader(isShow: true);
  return request;
}
