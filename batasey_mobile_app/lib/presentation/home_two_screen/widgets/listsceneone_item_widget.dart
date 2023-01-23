import '../controller/home_two_controller.dart';
import '../models/listsceneone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/core/app_export.dart';

// ignore: must_be_immutable
class ListsceneoneItemWidget extends StatelessWidget {
  ListsceneoneItemWidget(this.listsceneoneItemModelObj, {this.onTapCard});

  ListsceneoneItemModel listsceneoneItemModelObj;

  var controller = Get.find<HomeTwoController>();

  VoidCallback? onTapCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapCard!();
      },
      child: Container(
        padding: getPadding(
          all: 3,
        ),
        decoration: AppDecoration.fillBluegray800.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder25,
        ),
        child: Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgScene1,
              height: getSize(
                132.00,
              ),
              width: getSize(
                132.00,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  24.00,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 11,
                top: 9,
                right: 44,
                bottom: 8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: getHorizontalSize(
                      92.00,
                    ),
                    padding: getPadding(
                      left: 8,
                      top: 2,
                      right: 8,
                      bottom: 2,
                    ),
                    decoration: AppDecoration.txtOutlineGray300.copyWith(
                      borderRadius: BorderRadiusStyle.txtCircleBorder10,
                    ),
                    child: Text(
                      "msg_3_d_10_h_05".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtNunitoLight10.copyWith(
                        height: getVerticalSize(
                          1.00,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 5,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "lbl_jan_5_jan_7".tr.toUpperCase(),
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtNunitoRegular12.copyWith(
                            height: getVerticalSize(
                              1.00,
                            ),
                          ),
                        ),
                        Container(
                          height: getSize(
                            3.00,
                          ),
                          width: getSize(
                            3.00,
                          ),
                          margin: getMargin(
                            left: 8,
                            top: 7,
                            bottom: 6,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.blueGray10001,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                1.00,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 8,
                          ),
                          child: Text(
                            "lbl_2n3d".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtNunitoRegular12.copyWith(
                              height: getVerticalSize(
                                1.00,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      166.00,
                    ),
                    margin: getMargin(
                      top: 5,
                    ),
                    child: Text(
                      "msg_yosemite_park_tracking".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtNunitoMedium16.copyWith(
                        height: getVerticalSize(
                          1.00,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 7,
                    ),
                    child: Row(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgCheckmarkGray300,
                          height: getSize(
                            12.00,
                          ),
                          width: getSize(
                            12.00,
                          ),
                          margin: getMargin(
                            top: 2,
                            bottom: 2,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 4,
                          ),
                          child: Text(
                            "msg_california_united".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtNunitoLight12.copyWith(
                              height: getVerticalSize(
                                1.00,
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
          ],
        ),
      ),
    );
  }
}
