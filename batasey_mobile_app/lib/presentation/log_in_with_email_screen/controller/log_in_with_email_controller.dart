import 'package:travelapp/core/app_export.dart';
import 'package:travelapp/presentation/log_in_with_email_screen/models/log_in_with_email_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';

class LogInWithEmailController extends GetxController {
  TextEditingController phoneNumberController = TextEditingController();

  Rx<LogInWithEmailModel> logInWithEmailModelObj = LogInWithEmailModel().obs;

  RxBool isSelectedSwitch = false.obs;

  Rx<Country> selectedCountry =
      CountryPickerUtils.getCountryByPhoneCode('977').obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    phoneNumberController.dispose();
  }
}
