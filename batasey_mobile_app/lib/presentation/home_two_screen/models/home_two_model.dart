import 'package:get/get.dart';
import 'listzipcode2_item_model.dart';
import 'dates5_item_model.dart';
import 'listsceneone_item_model.dart';

class HomeTwoModel {
  RxList<Listzipcode2ItemModel> listzipcode2ItemList =
      RxList.filled(2, Listzipcode2ItemModel());

  RxList<Dates5ItemModel> dates5ItemList = RxList.filled(7, Dates5ItemModel());

  RxList<ListsceneoneItemModel> listsceneoneItemList =
      RxList.filled(2, ListsceneoneItemModel());
}
