
import 'package:flutter/material.dart';
import 'package:getx_sample/modules/home/home.dart';

class CustomDrawer extends StatelessWidget {
  final HomeController controller;

  const CustomDrawer(this.controller,{Key? key}) : super(key: key);

  // final HomeController controller = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return const Drawer();
  }
}
