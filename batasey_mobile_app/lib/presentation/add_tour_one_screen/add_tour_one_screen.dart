import '../add_tour_one_screen/widgets/dates1_item_widget.dart';
import '../add_tour_one_screen/widgets/listcreatefromframe_item_widget.dart';
import 'controller/add_tour_one_controller.dart';
import 'models/dates1_item_model.dart';
import 'models/listcreatefromframe_item_model.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/core/app_export.dart';
import 'package:travelapp/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:travelapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:travelapp/widgets/app_bar/custom_app_bar.dart';
import 'package:travelapp/widgets/custom_button.dart';

class AddTourOneScreen extends GetWidget<AddTourOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 61,
                leading: AppbarIconbutton1(
                    svgPath: ImageConstant.imgArrowleftBlueGray800,
                    margin: getMargin(left: 21),
                    onTap: onTapArrowleft7),
                title: AppbarSubtitle(
                    text: "msg_add_tour_reminder".tr,
                    margin: getMargin(left: 16))),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        margin:
                            getMargin(left: 16, top: 36, right: 16, bottom: 5),
                        decoration: AppDecoration.fillGray300,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: getHorizontalSize(361.00),
                                  padding: getPadding(top: 24, bottom: 24),
                                  decoration: AppDecoration.fillLightgreen200
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder25),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(left: 13, right: 13),
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
                                                          top: 3, bottom: 3)),
                                                  Text(
                                                      "lbl_january_2023"
                                                          .tr
                                                          .toUpperCase(),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtNunitoBold18
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
                                                          top: 3, bottom: 3))
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
                                            width: getHorizontalSize(319.00),
                                            margin:
                                                getMargin(top: 16, bottom: 1),
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgSelected,
                                                      height: getVerticalSize(
                                                          40.00),
                                                      width: getHorizontalSize(
                                                          136.00),
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
                                                                              9),
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
                                                                      .addTourOneModelObj
                                                                      .value
                                                                      .dates1ItemList
                                                                      .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          index) {
                                                                    Dates1ItemModel
                                                                        model =
                                                                        controller
                                                                            .addTourOneModelObj
                                                                            .value
                                                                            .dates1ItemList[index];
                                                                    return Dates1ItemWidget(
                                                                        model);
                                                                  }))))
                                                ]))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 12, top: 15, right: 42),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(32.00));
                                      },
                                      itemCount: controller
                                          .addTourOneModelObj
                                          .value
                                          .listcreatefromframeItemList
                                          .length,
                                      itemBuilder: (context, index) {
                                        ListcreatefromframeItemModel model =
                                            controller.addTourOneModelObj.value
                                                    .listcreatefromframeItemList[
                                                index];
                                        return ListcreatefromframeItemWidget(
                                            model);
                                      }))),
                              CustomButton(
                                  height: 48,
                                  width: 361,
                                  text: "lbl_save".tr,
                                  margin: getMargin(top: 140),
                                  variant: ButtonVariant.FillBluegray800,
                                  shape: ButtonShape.CircleBorder24,
                                  padding: ButtonPadding.PaddingAll13,
                                  fontStyle:
                                      ButtonFontStyle.NunitoRegular14Gray300,
                                  onTap: onTapSave)
                            ]))))));
  }

  onTapSave() {
    Get.toNamed(AppRoutes.homeOneScreen);
  }

  onTapArrowleft7() {
    Get.back();
  }
}
