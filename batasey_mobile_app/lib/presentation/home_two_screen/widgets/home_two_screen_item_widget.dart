import '../controller/home_two_controller.dart';
import '../models/home_two_screen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/core/app_export.dart';

// ignore: must_be_immutable
class HomeTwoScreenItemWidget extends StatelessWidget {
  HomeTwoScreenItemWidget(this.homeTwoScreenItemModelObj);

  HomeTwoScreenItemModel homeTwoScreenItemModelObj;

  var controller = Get.find<HomeTwoController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        width: getHorizontalSize(
          76.00,
        ),
        margin: getMargin(
          right: 24,
        ),
        padding: getPadding(
          left: 14,
          top: 2,
          right: 14,
          bottom: 2,
        ),
        decoration: AppDecoration.txtOutlineBluegray800.copyWith(
          borderRadius: BorderRadiusStyle.txtRoundedBorder17,
        ),
        child: Text(
          "lbl_2023".tr.toUpperCase(),
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtNunitoSemiBold20.copyWith(
            height: getVerticalSize(
              1.00,
            ),
          ),
        ),
      ),
    );
  }
}
