import '../controller/introtwentytwo_controller.dart';
import '../models/introtwentytwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/core/app_export.dart';

// ignore: must_be_immutable
class IntrotwentytwoItemWidget extends StatelessWidget {
  IntrotwentytwoItemWidget(this.introtwentytwoItemModelObj);

  IntrotwentytwoItemModel introtwentytwoItemModelObj;

  var controller = Get.find<IntrotwentytwoController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        145.00,
      ),
      width: getHorizontalSize(
        170.00,
      ),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMeghrajneupane145x191,
            height: getVerticalSize(
              145.00,
            ),
            width: getHorizontalSize(
              170.00,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                17.00,
              ),
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: getPadding(
                left: 21,
                top: 116,
                right: 14,
                bottom: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 2,
                      bottom: 2,
                    ),
                    child: Text(
                      "lbl_nature".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterBold13.copyWith(
                        height: getVerticalSize(
                          1.00,
                        ),
                      ),
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgCheckmarkBlue900,
                    height: getVerticalSize(
                      21.00,
                    ),
                    width: getHorizontalSize(
                      20.00,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
