import '../controller/profile_one_controller.dart';
import '../models/profile_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/core/app_export.dart';

// ignore: must_be_immutable
class ProfileOneItemWidget extends StatelessWidget {
  ProfileOneItemWidget(this.profileOneItemModelObj);

  ProfileOneItemModel profileOneItemModelObj;

  var controller = Get.find<ProfileOneController>();

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgMeghrajneupane145x191,
      height: getVerticalSize(
        97.00,
      ),
      width: getHorizontalSize(
        207.00,
      ),
      radius: BorderRadius.circular(
        getHorizontalSize(
          17.00,
        ),
      ),
    );
  }
}
