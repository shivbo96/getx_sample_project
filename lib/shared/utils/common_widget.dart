import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:getx_sample/shared/constants/colors.dart';
import 'package:getx_sample/shared/constants/images.dart';
import 'package:getx_sample/shared/shared.dart';

class CommonWidget {
  static AppBar appBar(BuildContext context,
      {String title = "",
      IconData? backIcon,
      Color? color,
      Color? backgroundColor,
      List<Widget>? actions,
      void Function()? callback}) {
    return AppBar(
      leading: backIcon == null
          ? Container()
          : IconButton(
              icon: Icon(backIcon, color: color ?? Colors.white,size: 22,),
              onPressed: () {
                if (callback != null) {
                  callback();
                } else {
                  Navigator.pop(context);
                }
              },
            ),
      centerTitle: true,
      title: Text(
        title.toString().toUpperCase(),
        style:
            TextStyle(color: color, fontSize: 18, fontWeight: FontWeight.w500, fontFamily: "Montserrat",),
      ),
      actions: actions ?? [],
      backgroundColor: backgroundColor ?? Colors.transparent,
      elevation: 0.0,
    );
  }

  static SizedBox rowHeight({double height = 30}) {
    return SizedBox(height: height);
  }

  static SizedBox rowWidth({double width = 30}) {
    return SizedBox(width: width);
  }

  static void toast(String error) async {
    await Fluttertoast.showToast(
        msg: error,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.white,
        textColor: Colors.black,
        fontSize: 16.0);
  }

  static void snackBar(String error) {
    Get.snackbar(
      "",
      error,
      messageText: Text(
        error,
        style: TextStyle(color: ColorConstants.black),
      ),
      backgroundColor: ColorConstants.white,
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  static void loader({bool isShow = false}) {
    Visibility(
      visible: isShow,
      child: const CircularProgressIndicator(),
    );
  }

  static void showDialog({
    required Widget widget,
    required int messageCode,
    required String content,
  }) {
    Get.dialog(widget, barrierDismissible: false);
  }
}
