import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:getx_sample/modules/home/tabs/tabs.dart';
import 'package:getx_sample/shared/constants/colors.dart';
import 'package:getx_sample/shared/widgets/custom_drawer.dart';
import 'home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Obx(() => _buildWidget(context)),
    );
  }

  Widget _buildWidget(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(controller),
      body: Center(
        child: _buildContent(controller.currentTab.value),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 10.0),
        color: ColorConstants.buttonBG,
        child: BottomNavigationBar(
          backgroundColor: ColorConstants.buttonBG,
          items: [
            _buildNavigationBarItem(
              MainTabs.home == controller.currentTab.value ? 'Home' : '',
              MainTabs.home == controller.currentTab.value
                  ? "icon_home_activited.svg"
                  : "icon_home.svg",
            ),
            _buildNavigationBarItem(
              MainTabs.music == controller.currentTab.value ? 'My Music' : '',
              MainTabs.music == controller.currentTab.value
                  ? "icon_my_music_activited.svg"
                  : "icon_my_music.svg",
            ),
            _buildNavigationBarItem(
              MainTabs.search == controller.currentTab.value ? 'Search' : '',
              MainTabs.search == controller.currentTab.value
                  ? "icon_search_activated.svg"
                  : "icon_search.svg",
            ),
            _buildNavigationBarItem(
              MainTabs.events == controller.currentTab.value ? 'Events' : '',
              MainTabs.events == controller.currentTab.value
                  ? "icon_events_activited.svg"
                  : "icon_events.svg",
            ),
            _buildNavigationBarItem(
              MainTabs.premium == controller.currentTab.value ? 'Premium' : '',
              MainTabs.premium == controller.currentTab.value
                  ? "premium_activated.svg"
                  : "premium.svg",
            ),
          ],
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: ColorConstants.white,
          currentIndex: controller.getCurrentIndex(controller.currentTab.value),
          selectedItemColor: ColorConstants.white,
          selectedLabelStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          onTap: (index) => controller.switchTab(index),
        ),
      ),
    );
  }

  showIndicator(String label, bool show) {
    return show
        ? Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Column(
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  height: 4,
                  width: 30,
                  decoration: BoxDecoration(
                      color: ColorConstants.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      )),
                ),
              ],
            ),
          )
        : const SizedBox();
  }

  Widget _buildContent(MainTabs tab) {
    switch (tab) {
      case MainTabs.home:
        return controller.dashBoardTab;
      case MainTabs.music:
        return controller.musicTab;
      case MainTabs.search:
        return controller.searchTab;
      case MainTabs.events:
        return controller.resourceTab;
      case MainTabs.premium:
        return controller.premiumTab;
      default:
        return controller.dashBoardTab;
    }
  }

  BottomNavigationBarItem _buildNavigationBarItem(String label, String svg) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        'assets/svgs/$svg',
        height: 25,
        width: 25,
      ),
      // label: label,
      label: label,
    );
    //showIndicator(label, label.isNotEmpty));
  }
}
