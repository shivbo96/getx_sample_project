import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/api/api_repository.dart';

class DashBoardController extends GetxController {
  final ApiRepository apiRepository;

  final profileFirstNameController = TextEditingController();
  final profileLastNameController = TextEditingController();

  var contactTermsChecked = false.obs;

  var isSettingClick=false.obs;
  var isEditClicked=false.obs;

  DashBoardController({required this.apiRepository});

  // var dashboardResponse = Rxn<DashboardResponseModel>();

  @override
  void onReady() async {
    dashboardApi();
    super.onReady();
  }

  @override
  void onInit() async {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();

    profileFirstNameController.dispose();
    profileLastNameController.dispose();
  }

  dashboardApi() async {
    // final res = await apiRepository.getDashBoard();
    // if (res!.status!) {
    //   dashboardResponse.value = res;
    //   // update();
    //   print("dashboardResponse.value ${dashboardResponse.value?.result?.data?.userName??""}");
    // }
  }
}
