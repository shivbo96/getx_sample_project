import 'package:get/get.dart';
import 'package:getx_sample/modules/home/tabs/dashboard/dashboard_controller.dart';

import 'home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
        () => HomeController(apiRepository: Get.find()));

    Get.lazyPut<DashBoardController>(
        () => DashBoardController(apiRepository: Get.find()));
  }
}
