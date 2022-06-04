import 'package:flutter/material.dart';
import 'package:getx_sample/shared/constants/colors.dart';
import 'package:getx_sample/shared/constants/images.dart';
import 'package:getx_sample/shared/utils/common_widget.dart';
import 'package:getx_sample/shared/utils/size_config.dart';

class ResourceTab extends StatelessWidget {
  const ResourceTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonWidget.appBar(context,
          title: 'Third Page',
          backIcon: Icons.menu,
          backgroundColor: ColorConstants.buttonBG,
          // color: ColorConstants.buttonBG,
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications,size: 22),
              onPressed: () {},
            )
          ], callback: () {
            Scaffold.of(context).openDrawer();
          }),
      body: Container(),
    );
  }
}
