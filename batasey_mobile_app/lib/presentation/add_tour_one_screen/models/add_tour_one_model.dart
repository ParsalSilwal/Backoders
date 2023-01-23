import 'package:get/get.dart';
import 'dates1_item_model.dart';
import 'listcreatefromframe_item_model.dart';

class AddTourOneModel {
  RxList<Dates1ItemModel> dates1ItemList = RxList.filled(7, Dates1ItemModel());

  RxList<ListcreatefromframeItemModel> listcreatefromframeItemList =
      RxList.filled(4, ListcreatefromframeItemModel());
}
