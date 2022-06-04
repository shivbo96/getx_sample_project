import 'package:get/get.dart';
import 'package:getx_sample/shared/constants/storage.dart';
import 'package:getx_sample/shared/services/storage_service.dart';


class DependencyInjection {
  static Future<void> init() async {
    await Get.putAsync(() => StorageService().init());
    // await Get.putAsync(() => Preference.load());
  }
}
