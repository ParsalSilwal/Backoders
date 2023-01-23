import 'controller/tour_details_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/core/app_export.dart';
import 'package:travelapp/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:travelapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:travelapp/widgets/app_bar/custom_app_bar.dart';
import 'package:travelapp/widgets/custom_button.dart';

class TourDetailsOneScreen extends GetWidget<TourDetailsOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray300,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 61,
                leading: AppbarIconbutton1(
                    svgPath: ImageConstant.imgArrowleftBlueGray800,
                    margin: getMargin(left: 21),
                    onTap: onTapArrowleft8),
                title: AppbarSubtitle(
                    text: "lbl_tour_details".tr, margin: getMargin(left: 15))),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        width: size.width,
                        margin: getMargin(top: 28),
                        padding: getPadding(
                            left: 15, top: 20, right: 15, bottom: 20),
                        decoration: AppDecoration.fillLightgreen200.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL24),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: getHorizontalSize(361.00),
                                  margin: getMargin(left: 2),
                                  padding: getPadding(
                                      left: 5, top: 6, right: 5, bottom: 6),
                                  decoration: AppDecoration.fillBluegray800
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder25),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgScene1350x350,
                                            height: getSize(350.00),
                                            width: getSize(350.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(24.00))),
                                        Container(
                                            width: getHorizontalSize(92.00),
                                            margin: getMargin(left: 3, top: 18),
                                            padding: getPadding(
                                                left: 8,
                                                top: 2,
                                                right: 8,
                                                bottom: 2),
                                            decoration: AppDecoration
                                                .txtOutlineGray300
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .txtCircleBorder10),
                                            child: Text("msg_3_d_10_h_05".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtNunitoLight10
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00)))),
                                        Padding(
                                            padding:
                                                getPadding(left: 2, top: 11),
                                            child: Row(children: [
                                              Text(
                                                  "lbl_jan_5_jan_7"
                                                      .tr
                                                      .toUpperCase(),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtNunitoRegular16Gray300
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00))),
                                              Container(
                                                  height: getSize(6.00),
                                                  width: getSize(6.00),
                                                  margin: getMargin(
                                                      left: 8,
                                                      top: 8,
                                                      bottom: 7),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .blueGray10001,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  3.00)))),
                                              Padding(
                                                  padding: getPadding(left: 8),
                                                  child: Text("lbl_2n3d".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtNunitoRegular16Gray300
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00))))
                                            ])),
                                        Padding(
                                            padding:
                                                getPadding(left: 3, top: 13),
                                            child: Text(
                                                "msg_yosemite_park_tracking".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtNunitoMedium18
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00)))),
                                        Padding(
                                            padding:
                                                getPadding(left: 3, top: 11),
                                            child: Row(children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgCheckmarkGray300,
                                                  height: getSize(12.00),
                                                  width: getSize(12.00),
                                                  margin: getMargin(
                                                      top: 2, bottom: 2)),
                                              Padding(
                                                  padding: getPadding(left: 4),
                                                  child: Text(
                                                      "msg_california_united"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtNunitoRegular12
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00))))
                                            ])),
                                        Container(
                                            width: getHorizontalSize(311.00),
                                            margin: getMargin(
                                                left: 3, top: 11, bottom: 19),
                                            child: Text(
                                                "msg_have_to_take_permission2"
                                                    .tr,
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtNunitoMedium14
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00))))
                                      ])),
                              CustomButton(
                                  height: 48,
                                  width: 361,
                                  text: "lbl_edit".tr,
                                  margin: getMargin(top: 18, bottom: 63),
                                  variant: ButtonVariant.FillBluegray800,
                                  shape: ButtonShape.CircleBorder24,
                                  fontStyle: ButtonFontStyle.RobotoMedium14,
                                  onTap: onTapEdit)
                            ]))))));
  }

  onTapEdit() {
    Get.toNamed(AppRoutes.editTourOneScreen);
  }

  onTapArrowleft8() {
    Get.back();
  }
}
