import 'dart:async';

import 'api.dart';

class ApiRepository {
  ApiRepository({required this.apiProvider});

  final ApiProvider apiProvider;

  // Future<LoginResponse?> login(LoginRequest data) async {
  //   final res = await apiProvider.login(ApiConstants.loginUrl, data);
  //
  //   if (res.statusCode == 200) {
  //     return LoginResponse.fromJson(res.body);
  //   }
  // }

  // Future<RegisterResponse?> register(Map<String, dynamic> data) async {
  //   final res = await apiProvider.register(ApiConstants.signUpUrl, data);
  //   if (res.statusCode == 200) {
  //     return RegisterResponse.fromJson(res.body);
  //   }
  // }



}
