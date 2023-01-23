import '../initial_screen/widgets/dates_item_widget.dart';
import '../initial_screen/widgets/listzipcode_item_widget.dart';
import 'controller/initial_controller.dart';
import 'models/dates_item_model.dart';
import 'models/listzipcode_item_model.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/core/app_export.dart';
import 'package:travelapp/widgets/app_bar/appbar_image.dart';
import 'package:travelapp/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:travelapp/widgets/app_bar/appbar_subtitle_7.dart';
import 'package:travelapp/widgets/app_bar/custom_app_bar.dart';

class InitialScreen extends GetWidget<InitialController> {
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
                          margin: getMargin(left: 133, top: 4, bottom: 4),
                          padding: getPadding(
                              left: 16, top: 9, right: 16, bottom: 9),
                          decoration: AppDecoration.outlineBluegray800.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder17),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    margin: getMargin(
                                        left: 16, top: 9, right: 24, bottom: 9),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10),
                                    child: Row(children: [
                                      AppbarImage(
                                          height: getSize(18.00),
                                          width: getSize(18.00),
                                          svgPath: ImageConstant.imgPlus,
                                          margin: getMargin(top: 1)),
                                      Padding(
                                          padding: getPadding(left: 8),
                                          child: Text("lbl_add_tour".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtNunitoRegular14Bluegray800
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.00))))
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
                                      itemCount: controller.initialModelObj
                                          .value.listzipcodeItemList.length,
                                      itemBuilder: (context, index) {
                                        ListzipcodeItemModel model = controller
                                            .initialModelObj
                                            .value
                                            .listzipcodeItemList[index];
                                        return ListzipcodeItemWidget(model);
                                      }))),
                              Container(
                                  width: size.width,
                                  margin: getMargin(top: 24),
                                  padding: getPadding(
                                      left: 16, top: 24, right: 16, bottom: 24),
                                  decoration: AppDecoration.fillLightgreen200
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .customBorderTL24),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                            "lbl_january_2023".tr.toUpperCase(),
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtNunitoBold18
                                                .copyWith(
                                                    height:
                                                        getVerticalSize(1.00))),
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: getHorizontalSize(361.00),
                                            margin: getMargin(top: 17),
                                            decoration: BoxDecoration(
                                                color: ColorConstant
                                                    .blueGray80019)),
                                        Container(
                                            height: getVerticalSize(256.00),
                                            child: Obx(() => ListView.separated(
                                                padding: getPadding(
                                                    left: 7, top: 16, right: 7),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                physics:
                                                    BouncingScrollPhysics(),
                                                separatorBuilder:
                                                    (context, index) {
                                                  return SizedBox(
                                                      height: getVerticalSize(
                                                          32.00));
                                                },
                                                itemCount: controller
                                                    .initialModelObj
                                                    .value
                                                    .datesItemList
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  DatesItemModel model =
                                                      controller
                                                          .initialModelObj
                                                          .value
                                                          .datesItemList[index];
                                                  return DatesItemWidget(model);
                                                }))),
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: getHorizontalSize(361.00),
                                            margin: getMargin(top: 18),
                                            decoration: BoxDecoration(
                                                color: ColorConstant
                                                    .blueGray80019)),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgTripbro,
                                            height: getVerticalSize(153.00),
                                            width: getHorizontalSize(203.00),
                                            margin: getMargin(top: 17)),
                                        Padding(
                                            padding:
                                                getPadding(top: 12, bottom: 55),
                                            child: Text(
                                                "msg_no_tour_planned".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtNunitoRegular14Bluegray800
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00))))
                                      ]))
                            ]))))));
  }

  onTapButton() {
    Get.toNamed(AppRoutes.addTourOneScreen);
  }
}
