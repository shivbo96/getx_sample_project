import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/storage.dart';

class StorageService extends GetxService {
  init() async {
    return await Preference.getInstance();
  }
}
