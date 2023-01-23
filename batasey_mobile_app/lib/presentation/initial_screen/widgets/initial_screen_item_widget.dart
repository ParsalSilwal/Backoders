import '../controller/initial_controller.dart';
import '../models/initial_screen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/core/app_export.dart';

// ignore: must_be_immutable
class InitialScreenItemWidget extends StatelessWidget {
  InitialScreenItemWidget(this.initialScreenItemModelObj);

  InitialScreenItemModel initialScreenItemModelObj;

  var controller = Get.find<InitialController>();

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
