import 'package:travelapp/core/app_export.dart';
import 'package:travelapp/presentation/sign_up_two_screen/models/sign_up_two_model.dart';
import 'package:flutter/material.dart';

class SignUpTwoController extends GetxController {
  TextEditingController group129Controller = TextEditingController();

  TextEditingController group128Controller = TextEditingController();

  TextEditingController group127Controller = TextEditingController();

  Rx<SignUpTwoModel> signUpTwoModelObj = SignUpTwoModel().obs;

  Rx<bool> isShowPassword = false.obs;

  Rx<bool> isShowPassword1 = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group129Controller.dispose();
    group128Controller.dispose();
    group127Controller.dispose();
  }
}
