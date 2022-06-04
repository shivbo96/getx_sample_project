import 'package:get/get.dart';
import 'package:getx_sample/modules/splash/splash_screen.dart';
import 'package:getx_sample/modules/auth/auth_binding.dart';
import 'package:getx_sample/modules/auth/register_screen.dart';
import 'package:getx_sample/modules/splash/splash_binding.dart';

import '../modules/home/home_binding.dart';
import '../modules/home/home_screen.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.REGISTER,
      page: () => RegisterScreen(),
      binding: AuthBinding(),
      children: const [

        // GetPage(
        //     name: Routes.FORGOT_PASSWORD, page: () => ForgotPasswordScreen()),
      ],
    ),
    GetPage(
      name: Routes.HOME,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
      // children: [
      //
      // ]
    ),
  ];
}
