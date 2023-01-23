import '../add_tour_two_screen/widgets/dates4_item_widget.dart';
import '../add_tour_two_screen/widgets/listcreatefromframe2_item_widget.dart';
import '../add_tour_two_screen/widgets/listcreatefromframe_two1_item_widget.dart';
import 'controller/add_tour_two_controller.dart';
import 'models/dates4_item_model.dart';
import 'models/listcreatefromframe2_item_model.dart';
import 'models/listcreatefromframe_two1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/core/app_export.dart';
import 'package:travelapp/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:travelapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:travelapp/widgets/app_bar/custom_app_bar.dart';
import 'package:travelapp/widgets/custom_button.dart';

class AddTourTwoScreen extends GetWidget<AddTourTwoController> {
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
                    onTap: onTapArrowleft10),
                title: AppbarSubtitle(
                    text: "lbl_add_tour".tr, margin: getMargin(left: 16))),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 16, top: 28, right: 16, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: getHorizontalSize(361.00),
                                  padding: getPadding(top: 18, bottom: 18),
                                  decoration: AppDecoration.fillLightgreen200
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder25),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                            padding: getPadding(
                                                left: 13, top: 5, right: 13),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowleft,
                                                      height: getSize(18.00),
                                                      width: getSize(18.00),
                                                      margin: getMargin(
                                                          top: 1, bottom: 2)),
                                                  Text(
                                                      "lbl_january_2023"
                                                          .tr
                                                          .toUpperCase(),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtNunitoBold16
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00))),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowleft,
                                                      height: getSize(18.00),
                                                      width: getSize(18.00),
                                                      margin: getMargin(
                                                          top: 1, bottom: 2))
                                                ])),
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: getHorizontalSize(360.00),
                                            margin: getMargin(top: 17),
                                            decoration: BoxDecoration(
                                                color: ColorConstant
                                                    .blueGray80019)),
                                        Container(
                                            height: getVerticalSize(240.00),
                                            width: getHorizontalSize(310.00),
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
                                                          184.00),
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      margin: getMargin(
                                                          right: 38,
                                                          bottom: 35)),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  240.00),
                                                          child: Obx(() => ListView
                                                              .separated(
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
                                                                            getVerticalSize(26.00));
                                                                  },
                                                                  itemCount: controller
                                                                      .addTourTwoModelObj
                                                                      .value
                                                                      .dates4ItemList
                                                                      .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          index) {
                                                                    Dates4ItemModel
                                                                        model =
                                                                        controller
                                                                            .addTourTwoModelObj
                                                                            .value
                                                                            .dates4ItemList[index];
                                                                    return Dates4ItemWidget(
                                                                        model);
                                                                  }))))
                                                ]))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 12, top: 16, right: 200),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(35.00));
                                      },
                                      itemCount: controller
                                          .addTourTwoModelObj
                                          .value
                                          .listcreatefromframe2ItemList
                                          .length,
                                      itemBuilder: (context, index) {
                                        Listcreatefromframe2ItemModel model =
                                            controller.addTourTwoModelObj.value
                                                    .listcreatefromframe2ItemList[
                                                index];
                                        return Listcreatefromframe2ItemWidget(
                                            model);
                                      }))),
                              Padding(
                                  padding:
                                      getPadding(left: 12, top: 33, right: 83),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(32.00));
                                      },
                                      itemCount: controller
                                          .addTourTwoModelObj
                                          .value
                                          .listcreatefromframeTwo1ItemList
                                          .length,
                                      itemBuilder: (context, index) {
                                        ListcreatefromframeTwo1ItemModel model =
                                            controller.addTourTwoModelObj.value
                                                    .listcreatefromframeTwo1ItemList[
                                                index];
                                        return ListcreatefromframeTwo1ItemWidget(
                                            model);
                                      }))),
                              CustomButton(
                                  height: 48,
                                  width: 361,
                                  text: "lbl_save".tr,
                                  margin: getMargin(top: 185),
                                  variant: ButtonVariant.FillBluegray800,
                                  shape: ButtonShape.CircleBorder24,
                                  fontStyle: ButtonFontStyle.RobotoMedium14)
                            ]))))));
  }

  onTapArrowleft10() {
    Get.back();
  }
}
