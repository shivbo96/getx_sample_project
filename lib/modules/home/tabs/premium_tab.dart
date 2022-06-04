import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:getx_sample/shared/constants/colors.dart';
import 'package:getx_sample/shared/constants/images.dart';
import 'package:getx_sample/shared/utils/common_widget.dart';
import 'package:getx_sample/shared/utils/size_config.dart';
import 'package:getx_sample/shared/widgets/border_button.dart';

class PremiumTab extends StatelessWidget {
  const PremiumTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonWidget.appBar(context,
          title: 'Fourth Page',
          backIcon: Icons.menu,
          backgroundColor: ColorConstants.buttonBG,
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
