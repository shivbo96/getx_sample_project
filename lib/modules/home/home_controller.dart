import 'dart:math';

import 'package:get/get.dart';
import 'package:getx_sample/api/api_repository.dart';
import 'package:getx_sample/models/response/users_response.dart';
import 'package:getx_sample/modules/home/tabs/tabs.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {
  final ApiRepository apiRepository;

  HomeController({required this.apiRepository});

  var currentTab = MainTabs.home.obs;

  var users = Rxn<UsersResponse>();
  var user = Rxn<Datum>();

  late DashBoardPage dashBoardTab;
  late MusicTab musicTab;
  late ResourceTab resourceTab;
  late ResourceTab searchTab;
  late PremiumTab premiumTab;

  @override
  void onInit() async {
    super.onInit();
    dashBoardTab = const DashBoardPage();
    // loadUsers();
    musicTab = const MusicTab();
    resourceTab = const ResourceTab();
    searchTab = const ResourceTab();
    premiumTab = const PremiumTab();
  }

  void _saveUserInfo(UsersResponse users) {
    var random = Random();
    var index = random.nextInt(users.data!.length);
    user.value = users.data![index];
    var prefs = Get.find<SharedPreferences>();
    // prefs.setString(StorageConstants.userInfo, users.data![index].toRawJson());

    // var userInfo = prefs.getString(StorageConstants.userInfo);
    // var userInfoObj = Datum.fromRawJson(xx!);
    // print(userInfoObj);
  }

  void switchTab(index) {
    var tab = _getCurrentTab(index);
    currentTab.value = tab;
  }

  int getCurrentIndex(MainTabs tab) {
    switch (tab) {
      case MainTabs.home:
        return 0;
      case MainTabs.music:
        return 1;
      case MainTabs.search:
        return 2;
      case MainTabs.events:
        return 3;
      case MainTabs.premium:
        return 4;
      default:
        return 0;
    }
  }

  MainTabs _getCurrentTab(int index) {
    switch (index) {
      case 0:
        return MainTabs.home;
      case 1:
        return MainTabs.music;
      case 2:
        return MainTabs.search;
      case 3:
        return MainTabs.events;
      case 4:
        return MainTabs.premium;
      default:
        return MainTabs.home;
    }
  }

  Future<void> logoutUser() async {
    // var result = await apiRepository.logout();
    // if (result?.status ?? false) {
    //   NavigatorHelper.popLastScreens(popCount: 1);
    //   Preference.clearPref();
    //   Preference.setBool(Preference.IS_WELCOME_SCREEN, true);
    //   Get.offAllNamed(Routes.LOGIN);
    // }
  }
}
