import 'package:travelapp/core/app_export.dart';
import 'package:travelapp/presentation/attraction_screen/models/attraction_model.dart';
import 'package:flutter/material.dart';

class AttractionController extends GetxController {
  TextEditingController groupNinetyNineController = TextEditingController();

  Rx<AttractionModel> attractionModelObj = AttractionModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupNinetyNineController.dispose();
  }
}
