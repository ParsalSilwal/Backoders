import '../controller/home_two_controller.dart';
import '../models/home_two_screen_item_model.dart';
import '../models/listzipcode2_item_model.dart';
import '../widgets/home_two_screen_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/core/app_export.dart';

// ignore: must_be_immutable
class Listzipcode2ItemWidget extends StatelessWidget {
  Listzipcode2ItemWidget(this.listzipcode2ItemModelObj);

  Listzipcode2ItemModel listzipcode2ItemModelObj;

  var controller = Get.find<HomeTwoController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        35.00,
      ),
      child: Obx(
        () => ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          separatorBuilder: (context, index) {
            return SizedBox(
              height: getVerticalSize(
                24.00,
              ),
            );
          },
          itemCount: listzipcode2ItemModelObj.homeTwoScreenItemList.length,
          itemBuilder: (context, index) {
            HomeTwoScreenItemModel model =
                listzipcode2ItemModelObj.homeTwoScreenItemList[index];
            return HomeTwoScreenItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
