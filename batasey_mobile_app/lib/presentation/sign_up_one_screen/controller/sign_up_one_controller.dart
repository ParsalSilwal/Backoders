import 'package:travelapp/core/app_export.dart';
import 'package:travelapp/presentation/sign_up_one_screen/models/sign_up_one_model.dart';
import 'package:flutter/material.dart';

class SignUpOneController extends GetxController {
  TextEditingController group36688Controller = TextEditingController();

  TextEditingController group36687Controller = TextEditingController();

  TextEditingController group36686Controller = TextEditingController();

  Rx<SignUpOneModel> signUpOneModelObj = SignUpOneModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group36688Controller.dispose();
    group36687Controller.dispose();
    group36686Controller.dispose();
  }
}
