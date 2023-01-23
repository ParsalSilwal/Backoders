import '../edit_tour_one_screen/widgets/dates3_item_widget.dart';
import '../edit_tour_one_screen/widgets/listcreatefromframe1_item_widget.dart';
import '../edit_tour_one_screen/widgets/listcreatefromframe_two_item_widget.dart';
import 'controller/edit_tour_one_controller.dart';
import 'models/dates3_item_model.dart';
import 'models/listcreatefromframe1_item_model.dart';
import 'models/listcreatefromframe_two_item_model.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/core/app_export.dart';
import 'package:travelapp/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:travelapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:travelapp/widgets/app_bar/custom_app_bar.dart';
import 'package:travelapp/widgets/custom_button.dart';
import 'package:travelapp/presentation/edit_tour_are_you_sure_dialog/edit_tour_are_you_sure_dialog.dart';
import 'package:travelapp/presentation/edit_tour_are_you_sure_dialog/controller/edit_tour_are_you_sure_controller.dart';

class EditTourOneScreen extends GetWidget<EditTourOneController> {
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
                    onTap: onTapArrowleft9),
                title: AppbarSubtitle(
                    text: "lbl_edit_tour".tr, margin: getMargin(left: 16))),
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
                                                                      .editTourOneModelObj
                                                                      .value
                                                                      .dates3ItemList
                                                                      .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          index) {
                                                                    Dates3ItemModel
                                                                        model =
                                                                        controller
                                                                            .editTourOneModelObj
                                                                            .value
                                                                            .dates3ItemList[index];
                                                                    return Dates3ItemWidget(
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
                                          .editTourOneModelObj
                                          .value
                                          .listcreatefromframe1ItemList
                                          .length,
                                      itemBuilder: (context, index) {
                                        Listcreatefromframe1ItemModel model =
                                            controller.editTourOneModelObj.value
                                                    .listcreatefromframe1ItemList[
                                                index];
                                        return Listcreatefromframe1ItemWidget(
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
                                          .editTourOneModelObj
                                          .value
                                          .listcreatefromframeTwoItemList
                                          .length,
                                      itemBuilder: (context, index) {
                                        ListcreatefromframeTwoItemModel model =
                                            controller.editTourOneModelObj.value
                                                    .listcreatefromframeTwoItemList[
                                                index];
                                        return ListcreatefromframeTwoItemWidget(
                                            model);
                                      }))),
                              CustomButton(
                                  height: 48,
                                  width: 361,
                                  text: "lbl_delete_tour".tr,
                                  margin: getMargin(top: 185),
                                  variant: ButtonVariant.OutlineBluegray800_1,
                                  shape: ButtonShape.CircleBorder24,
                                  fontStyle:
                                      ButtonFontStyle.RobotoMedium14Bluegray800,
                                  onTap: onTapDeletetour)
                            ])))),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 16, right: 16, bottom: 32),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomButton(
                      height: 48,
                      width: 361,
                      text: "lbl_update".tr,
                      variant: ButtonVariant.FillBluegray800,
                      shape: ButtonShape.CircleBorder24,
                      fontStyle: ButtonFontStyle.RobotoMedium14,
                      onTap: onTapUpdate)
                ]))));
  }

  onTapDeletetour() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.only(left: 0),
      content: EditTourAreYouSureDialog(
        Get.put(
          EditTourAreYouSureController(),
        ),
      ),
    ));
  }

  onTapUpdate() {
    Get.toNamed(AppRoutes.tourDetailsOneScreen);
  }

  onTapArrowleft9() {
    Get.back();
  }
}
