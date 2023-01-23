import 'package:travelapp/core/app_export.dart';
import 'package:travelapp/presentation/reset_password_screen/models/reset_password_model.dart';
import 'package:flutter/material.dart';

class ResetPasswordController extends GetxController {
  TextEditingController group126Controller = TextEditingController();

  TextEditingController group125Controller = TextEditingController();

  Rx<ResetPasswordModel> resetPasswordModelObj = ResetPasswordModel().obs;

  Rx<bool> isShowPassword = false.obs;

  Rx<bool> isShowPassword1 = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group126Controller.dispose();
    group125Controller.dispose();
  }
}
