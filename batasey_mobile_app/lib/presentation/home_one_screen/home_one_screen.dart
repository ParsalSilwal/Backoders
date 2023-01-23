import '../home_one_screen/widgets/dates2_item_widget.dart';
import '../home_one_screen/widgets/listzipcode1_item_widget.dart';
import 'controller/home_one_controller.dart';
import 'models/dates2_item_model.dart';
import 'models/listzipcode1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/core/app_export.dart';
import 'package:travelapp/widgets/app_bar/appbar_image.dart';
import 'package:travelapp/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:travelapp/widgets/app_bar/appbar_subtitle_4.dart';
import 'package:travelapp/widgets/app_bar/appbar_subtitle_7.dart';
import 'package:travelapp/widgets/app_bar/custom_app_bar.dart';
import 'package:travelapp/widgets/custom_button.dart';

class HomeOneScreen extends GetWidget<HomeOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray300,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                centerTitle: true,
                title: Row(children: [
                  Container(
                      height: getVerticalSize(47.72),
                      width: getHorizontalSize(103.00),
                      child: Stack(alignment: Alignment.centerLeft, children: [
                        AppbarSubtitle7(
                            text: "lbl_good_morning".tr,
                            margin: getMargin(right: 24, bottom: 30)),
                        AppbarSubtitle1(
                            text: "lbl_john_doe".tr, margin: getMargin(top: 14))
                      ])),
                  GestureDetector(
                      onTap: () {
                        onTapButton();
                      },
                      child: Container(
                          margin: getMargin(left: 134, top: 4, bottom: 3),
                          padding: getPadding(
                              left: 16, top: 11, right: 16, bottom: 11),
                          decoration: AppDecoration.outlineBluegray800.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder20),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    margin: getMargin(
                                        left: 16,
                                        top: 11,
                                        right: 24,
                                        bottom: 11),
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
                              ])))
                ])),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        width: size.width,
                        margin: getMargin(top: 24),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(left: 16),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(18.00));
                                      },
                                      itemCount: controller.homeOneModelObj
                                          .value.listzipcode1ItemList.length,
                                      itemBuilder: (context, index) {
                                        Listzipcode1ItemModel model = controller
                                            .homeOneModelObj
                                            .value
                                            .listzipcode1ItemList[index];
                                        return Listzipcode1ItemWidget(model);
                                      }))),
                              Container(
                                  width: size.width,
                                  margin: getMargin(top: 24),
                                  padding: getPadding(
                                      left: 15, top: 24, right: 15, bottom: 24),
                                  decoration: AppDecoration.fillLightgreen200
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .customBorderTL24),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: getPadding(right: 1),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 3, bottom: 3),
                                                      child: Text(
                                                          "lbl_january_2023"
                                                              .tr
                                                              .toUpperCase(),
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtNunitoBold18
                                                              .copyWith(
                                                                  height:
                                                                      getVerticalSize(
                                                                          1.00)))),
                                                  CustomButton(
                                                      height: 32,
                                                      width: 74,
                                                      text: "lbl_1_event"
                                                          .tr
                                                          .toUpperCase(),
                                                      variant: ButtonVariant
                                                          .OutlineBluegray800,
                                                      shape: ButtonShape
                                                          .CircleBorder16,
                                                      padding: ButtonPadding
                                                          .PaddingAll8,
                                                      fontStyle: ButtonFontStyle
                                                          .NunitoBold12)
                                                ])),
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: getHorizontalSize(361.00),
                                            margin: getMargin(top: 18),
                                            decoration: BoxDecoration(
                                                color: ColorConstant
                                                    .blueGray80019)),
                                        Container(
                                            height: getVerticalSize(240.00),
                                            width: getHorizontalSize(354.00),
                                            margin: getMargin(top: 16),
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgSelectedBlueGray10001,
                                                      height: getVerticalSize(
                                                          40.00),
                                                      width: getHorizontalSize(
                                                          147.00),
                                                      alignment:
                                                          Alignment.topRight,
                                                      margin:
                                                          getMargin(top: 34)),
                                                  Align(
                                                      alignment: Alignment
                                                          .center,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  240.00),
                                                          child: Obx(() => ListView
                                                              .separated(
                                                                  padding:
                                                                      getPadding(
                                                                          right:
                                                                              8),
                                                                  scrollDirection:
                                                                      Axis
                                                                          .horizontal,
                                                                  physics:
                                                                      BouncingScrollPhysics(),
                                                                  separatorBuilder:
                                                                      (context,
                                                                          index) {
                                                                    return SizedBox(
                                                                        height:
                                                                            getVerticalSize(32.00));
                                                                  },
                                                                  itemCount: controller
                                                                      .homeOneModelObj
                                                                      .value
                                                                      .dates2ItemList
                                                                      .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          index) {
                                                                    Dates2ItemModel
                                                                        model =
                                                                        controller
                                                                            .homeOneModelObj
                                                                            .value
                                                                            .dates2ItemList[index];
                                                                    return Dates2ItemWidget(
                                                                        model);
                                                                  }))))
                                                ])),
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: getHorizontalSize(361.00),
                                            margin: getMargin(top: 18),
                                            decoration: BoxDecoration(
                                                color: ColorConstant
                                                    .blueGray80019)),
                                        GestureDetector(
                                            onTap: () {
                                              onTapCard();
                                            },
                                            child: Container(
                                                margin: getMargin(
                                                    left: 1,
                                                    top: 17,
                                                    right: 1,
                                                    bottom: 97),
                                                padding: getPadding(all: 3),
                                                decoration: AppDecoration
                                                    .fillBluegray800
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder25),
                                                child: Row(children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgScene1,
                                                      height: getSize(132.00),
                                                      width: getSize(132.00),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  24.00))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 11,
                                                          top: 9,
                                                          right: 44,
                                                          bottom: 8),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                                width: getHorizontalSize(
                                                                    92.00),
                                                                padding:
                                                                    getPadding(
                                                                        left: 8,
                                                                        top: 2,
                                                                        right:
                                                                            8,
                                                                        bottom:
                                                                            2),
                                                                decoration: AppDecoration
                                                                    .txtOutlineGray300
                                                                    .copyWith(
                                                                        borderRadius: BorderRadiusStyle
                                                                            .txtCircleBorder10),
                                                                child: Text(
                                                                    "msg_3_d_10_h_05"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtNunitoLight10
                                                                        .copyWith(
                                                                            height:
                                                                                getVerticalSize(1.00)))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 5),
                                                                child: Row(
                                                                    children: [
                                                                      Text(
                                                                          "lbl_jan_5_jan_7"
                                                                              .tr
                                                                              .toUpperCase(),
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtNunitoRegular12
                                                                              .copyWith(height: getVerticalSize(1.00))),
                                                                      Container(
                                                                          height: getSize(
                                                                              3.00),
                                                                          width: getSize(
                                                                              3.00),
                                                                          margin: getMargin(
                                                                              left:
                                                                                  8,
                                                                              top:
                                                                                  7,
                                                                              bottom:
                                                                                  6),
                                                                          decoration: BoxDecoration(
                                                                              color: ColorConstant.blueGray10001,
                                                                              borderRadius: BorderRadius.circular(getHorizontalSize(1.00)))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  8),
                                                                          child: Text(
                                                                              "lbl_2n3d".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtNunitoRegular12.copyWith(height: getVerticalSize(1.00))))
                                                                    ])),
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        166.00),
                                                                margin: getMargin(
                                                                    top: 5),
                                                                child: Text(
                                                                    "msg_yosemite_park_tracking"
                                                                        .tr,
                                                                    maxLines:
                                                                        null,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtNunitoMedium16
                                                                        .copyWith(
                                                                            height:
                                                                                getVerticalSize(1.00)))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 7),
                                                                child: Row(
                                                                    children: [
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgCheckmarkGray300,
                                                                          height: getSize(
                                                                              12.00),
                                                                          width: getSize(
                                                                              12.00),
                                                                          margin: getMargin(
                                                                              top: 2,
                                                                              bottom: 2)),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  4),
                                                                          child: Text(
                                                                              "msg_california_united".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtNunitoLight12.copyWith(height: getVerticalSize(1.00))))
                                                                    ]))
                                                          ]))
                                                ])))
                                      ]))
                            ]))))));
  }

  onTapCard() {
    Get.toNamed(AppRoutes.tourDetailsOneScreen);
  }

  onTapButton() {
    Get.toNamed(AppRoutes.addTourTwoScreen);
  }
}
