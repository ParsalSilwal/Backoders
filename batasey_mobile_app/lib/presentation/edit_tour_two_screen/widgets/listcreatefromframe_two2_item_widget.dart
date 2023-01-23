import '../controller/edit_tour_two_controller.dart';
import '../models/listcreatefromframe_two2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/core/app_export.dart';

// ignore: must_be_immutable
class ListcreatefromframeTwo2ItemWidget extends StatelessWidget {
  ListcreatefromframeTwo2ItemWidget(this.listcreatefromframeTwo2ItemModelObj);

  ListcreatefromframeTwo2ItemModel listcreatefromframeTwo2ItemModelObj;

  var controller = Get.find<EditTourTwoController>();

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: ColorConstant.blueGray800,
          width: getHorizontalSize(
            1.00,
          ),
        ),
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Container(
        height: getVerticalSize(
          48.00,
        ),
        width: getHorizontalSize(
          80.00,
        ),
        decoration: AppDecoration.outlineBluegray800.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder6,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: getVerticalSize(
                  40.00,
                ),
                width: getHorizontalSize(
                  80.00,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      4.00,
                    ),
                  ),
                  border: Border.all(
                    color: ColorConstant.blueGray800,
                    width: getHorizontalSize(
                      1.00,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder6,
                ),
                child: Container(
                  height: getVerticalSize(
                    48.00,
                  ),
                  width: getHorizontalSize(
                    80.00,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.roundedBorder6,
                  ),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgSearchBlueGray800,
                        height: getSize(
                          24.00,
                        ),
                        width: getSize(
                          24.00,
                        ),
                        alignment: Alignment.bottomLeft,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: getHorizontalSize(
                                58.00,
                              ),
                              padding: getPadding(
                                left: 4,
                                top: 1,
                                right: 4,
                                bottom: 1,
                              ),
                              decoration: AppDecoration.txtFillGray300,
                              child: Text(
                                "lbl_location".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRegular12.copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.40,
                                  ),
                                  height: getVerticalSize(
                                    1.14,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: getPadding(
                                  top: 11,
                                ),
                                child: Text(
                                  "lbl_nepal".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRegular16.copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.50,
                                    ),
                                    height: getVerticalSize(
                                      1.28,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
