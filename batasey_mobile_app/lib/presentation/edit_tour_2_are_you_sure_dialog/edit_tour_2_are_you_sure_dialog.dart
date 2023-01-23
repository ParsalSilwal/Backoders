import 'controller/edit_tour_2_are_you_sure_controller.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/core/app_export.dart';

// ignore_for_file: must_be_immutable
class EditTour2AreYouSureDialog extends StatelessWidget {
  EditTour2AreYouSureDialog(this.controller);

  EditTour2AreYouSureController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 24,
        top: 27,
        right: 24,
        bottom: 27,
      ),
      decoration: AppDecoration.fillLightgreen200.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder28,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "lbl_are_you_sure".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtRobotoRegular24.copyWith(
              height: getVerticalSize(
                1.14,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 18,
            ),
            child: Text(
              "msg_do_you_want_to_delete".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRobotoRegular14.copyWith(
                letterSpacing: getHorizontalSize(
                  0.25,
                ),
                height: getVerticalSize(
                  1.22,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: getPadding(
                top: 35,
                right: 12,
                bottom: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "lbl_no".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoMedium14.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.10,
                      ),
                      height: getVerticalSize(
                        1.22,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 32,
                    ),
                    child: Text(
                      "lbl_yes".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoMedium14.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.10,
                        ),
                        height: getVerticalSize(
                          1.22,
                        ),
                      ),
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
