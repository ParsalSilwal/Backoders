import 'package:travelapp/core/app_export.dart';
import 'package:travelapp/presentation/log_in_with_email_enter_a_code_two_screen/models/log_in_with_email_enter_a_code_two_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

class LogInWithEmailEnterACodeTwoController extends GetxController
    with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<LogInWithEmailEnterACodeTwoModel> logInWithEmailEnterACodeTwoModelObj =
      LogInWithEmailEnterACodeTwoModel().obs;

  @override
  void codeUpdated() {
    otpController.value.text = code!;
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
