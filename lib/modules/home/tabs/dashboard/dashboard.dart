import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:getx_sample/shared/shared.dart';
import '../../../../shared/constants/images.dart';
import 'dashboard_controller.dart';

class DashBoardPage extends GetView<DashBoardController> {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: CommonWidget.appBar(context,
          title: 'Dashboard',
          backIcon: Icons.menu,
          backgroundColor: ColorConstants.buttonBG,
          // color: ColorConstants.buttonBG,
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications, size: 22),
              onPressed: () {},
            )
          ], callback: () {
        Scaffold.of(context).openDrawer();
      }),
      body: Container(),
    );
  }
}
