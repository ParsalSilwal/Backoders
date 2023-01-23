import 'package:travelapp/core/app_export.dart';
import 'package:travelapp/presentation/log_in_two_screen/models/log_in_two_model.dart';
import 'package:flutter/material.dart';

class LogInTwoController extends GetxController {
  TextEditingController groupFortyThreeController = TextEditingController();

  TextEditingController groupFortyTwoController = TextEditingController();

  Rx<LogInTwoModel> logInTwoModelObj = LogInTwoModel().obs;

  Rx<bool> isShowPassword = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupFortyThreeController.dispose();
    groupFortyTwoController.dispose();
  }
}
