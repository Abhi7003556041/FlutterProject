import 'dart:io';

import 'package:collge_erp_app/const/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:get/get.dart';

class AppUtils {
  static showError(String msg) {
    Get.closeAllSnackbars();
    Get.showSnackbar(GetSnackBar(
        backgroundColor: red.withOpacity(0.4),
        message: msg,
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 2),
        margin: const EdgeInsets.only(bottom: 10, left: 0, right: 0)));
  }

  static toastMessage(String message){
    Get.showSnackbar(GetSnackBar(
        message: message,
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 2),
        margin: const EdgeInsets.only(bottom: 10, left: 0, right: 0)));
  }
  
}
DateTime? backbuttonpressedTime;
Future<bool> onWillPop(BuildContext context, bool didPop) async {
  DateTime currentTime = DateTime.now();
  bool backButton = backbuttonpressedTime == null ||
      currentTime.difference(backbuttonpressedTime!) > Duration(seconds: 3);

  if (backButton) {
    backbuttonpressedTime = currentTime;
    Fluttertoast.showToast(
        msg:"Double Click to exit app",
        backgroundColor: Colors.black,
        textColor: Colors.white);
    // Wait for the toast message to be dismissed before returning
    await Future.delayed(Duration(seconds: 3));
    return false;
  } else {
    if (Platform.isAndroid) {
       SystemNavigator.pop();
      // exit(0);
      Get.log("sdfsdf>>>>>${context}");
    } else if (Platform.isIOS) {
      exit(0);
    }
    return true;
  }
}
