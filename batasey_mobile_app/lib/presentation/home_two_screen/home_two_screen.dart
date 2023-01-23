import '../home_two_screen/widgets/dates5_item_widget.dart';
import '../home_two_screen/widgets/listsceneone_item_widget.dart';
import '../home_two_screen/widgets/listzipcode2_item_widget.dart';
import 'controller/home_two_controller.dart';
import 'models/dates5_item_model.dart';
import 'models/listsceneone_item_model.dart';
import 'models/listzipcode2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/core/app_export.dart';
import 'package:travelapp/widgets/app_bar/appbar_image.dart';
import 'package:travelapp/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:travelapp/widgets/app_bar/appbar_subtitle_4.dart';
import 'package:travelapp/widgets/app_bar/appbar_subtitle_7.dart';
import 'package:travelapp/widgets/app_bar/custom_app_bar.dart';
import 'package:travelapp/widgets/custom_button.dart';

class HomeTwoScreen extends GetWidget<HomeTwoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                centerTitle: true,
                title: Row(children: [
                  Container(
                      height: getVerticalSize(47.71),
                      width: getHorizontalSize(103.00),
                      child: Stack(alignment: Alignment.centerLeft, children: [
                        AppbarSubtitle7(
                            text: "lbl_good_morning".tr,
                            margin: getMargin(right: 24, bottom: 30)),
                        AppbarSubtitle1(
                            text: "lbl_john_doe".tr, margin: getMargin(top: 14))
                      ])),
                  Container(
                      margin: getMargin(left: 134, top: 4, bottom: 3),
                      padding:
                          getPadding(left: 16, top: 11, right: 16, bottom: 11),
                      decoration: AppDecoration.outlineBluegray800.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                margin: getMargin(
                                    left: 16, top: 11, right: 24, bottom: 11),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10),
                                child: Row(children: [
                                  AppbarImage(
                                      height: getSize(18.00),
                                      width: getSize(18.00),
                                      svgPath: ImageConstant.imgPlus),
                                  AppbarSubtitle4(
                                      text: "lbl_add_tour".tr,
                                      margin: getMargin(left: 8))
                                ]))
                          ]))
                ])),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: getVerticalSize(1000.00),
                        width: size.width,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  height: size.height,
                                  width: size.width,
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray300))),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  width: size.width,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: getPadding(left: 16),
                                            child: Obx(() => ListView.separated(
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                shrinkWrap: true,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return SizedBox(
                                                      height: getVerticalSize(
                                                          18.00));
                                                },
                                                itemCount: controller
                                                    .homeTwoModelObj
                                                    .value
                                                    .listzipcode2ItemList
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  Listzipcode2ItemModel model =
                                                      controller
                                                              .homeTwoModelObj
                                                              .value
                                                              .listzipcode2ItemList[
                                                          index];
                                                  return Listzipcode2ItemWidget(
                                                      model);
                                                }))),
                                        Container(
                                            width: size.width,
                                            margin: getMargin(top: 24),
                                            padding: getPadding(
                                                left: 15,
                                                top: 24,
                                                right: 15,
                                                bottom: 24),
                                            decoration: AppDecoration
                                                .fillLightgreen200
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .customBorderTL24),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(right: 1),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 3,
                                                                        bottom:
                                                                            3),
                                                                child: Text(
                                                                    "lbl_january_2023"
                                                                        .tr
                                                                        .toUpperCase(),
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtNunitoBold18
                                                                        .copyWith(
                                                                            height:
                                                                                getVerticalSize(1.00)))),
                                                            CustomButton(
                                                                height: 32,
                                                                width: 74,
                                                                text: "lbl_1_event"
                                                                    .tr
                                                                    .toUpperCase(),
                                                                variant:
                                                                    ButtonVariant
                                                                        .OutlineBluegray800,
                                                                shape: ButtonShape
                                                                    .CircleBorder16,
                                                                padding:
                                                                    ButtonPadding
                                                                        .PaddingAll8,
                                                                fontStyle:
                                                                    ButtonFontStyle
                                                                        .NunitoBold12)
                                                          ])),
                                                  Container(
                                                      height:
                                                          getVerticalSize(1.00),
                                                      width: getHorizontalSize(
                                                          361.00),
                                                      margin:
                                                          getMargin(top: 18),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .blueGray80019)),
                                                  Container(
                                                      height: getVerticalSize(
                                                          240.00),
                                                      width: getHorizontalSize(
                                                          354.00),
                                                      margin:
                                                          getMargin(top: 16),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .topRight,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgSelectedBlueGray10001,
                                                                height:
                                                                    getVerticalSize(
                                                                        40.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        202.00),
                                                                alignment: Alignment
                                                                    .bottomRight,
                                                                margin:
                                                                    getMargin(
                                                                        right:
                                                                            54,
                                                                        bottom:
                                                                            34)),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgSelectedBlueGray10001,
                                                                height:
                                                                    getVerticalSize(
                                                                        40.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        147.00),
                                                                alignment:
                                                                    Alignment
                                                                        .topRight,
                                                                margin:
                                                                    getMargin(
                                                                        top:
                                                                            34)),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Container(
                                                                    height: getVerticalSize(240.00),
                                                                    child: Obx(() => ListView.separated(
                                                                        padding: getPadding(right: 8),
                                                                        scrollDirection: Axis.horizontal,
                                                                        physics: BouncingScrollPhysics(),
                                                                        separatorBuilder: (context, index) {
                                                                          return SizedBox(
                                                                              height: getVerticalSize(32.00));
                                                                        },
                                                                        itemCount: controller.homeTwoModelObj.value.dates5ItemList.length,
                                                                        itemBuilder: (context, index) {
                                                                          Dates5ItemModel model = controller
                                                                              .homeTwoModelObj
                                                                              .value
                                                                              .dates5ItemList[index];
                                                                          return Dates5ItemWidget(
                                                                              model);
                                                                        }))))
                                                          ])),
                                                  Container(
                                                      height:
                                                          getVerticalSize(1.00),
                                                      width: getHorizontalSize(
                                                          361.00),
                                                      margin:
                                                          getMargin(top: 18),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .blueGray80019)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 1,
                                                          top: 17,
                                                          right: 1,
                                                          bottom: 89),
                                                      child: Obx(() =>
                                                          ListView.separated(
                                                              physics:
                                                                  NeverScrollableScrollPhysics(),
                                                              shrinkWrap: true,
                                                              separatorBuilder:
                                                                  (context,
                                                                      index) {
                                                                return SizedBox(
                                                                    height: getVerticalSize(
                                                                        18.00));
                                                              },
                                                              itemCount: controller
                                                                  .homeTwoModelObj
                                                                  .value
                                                                  .listsceneoneItemList
                                                                  .length,
                                                              itemBuilder:
                                                                  (context,
                                                                      index) {
                                                                ListsceneoneItemModel
                                                                    model =
                                                                    controller
                                                                        .homeTwoModelObj
                                                                        .value
                                                                        .listsceneoneItemList[index];
                                                                return ListsceneoneItemWidget(
                                                                    model,
                                                                    onTapCard:
                                                                        onTapCard);
                                                              })))
                                                ]))
                                      ])))
                        ]))))));
  }

  onTapCard() {
    Get.toNamed(AppRoutes.tourDetailsOneScreen);
  }
}
