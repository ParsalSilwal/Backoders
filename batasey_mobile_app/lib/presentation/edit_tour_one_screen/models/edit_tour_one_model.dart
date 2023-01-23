import 'package:get/get.dart';
import 'dates3_item_model.dart';
import 'listcreatefromframe1_item_model.dart';
import 'listcreatefromframe_two_item_model.dart';

class EditTourOneModel {
  RxList<Dates3ItemModel> dates3ItemList = RxList.filled(7, Dates3ItemModel());

  RxList<Listcreatefromframe1ItemModel> listcreatefromframe1ItemList =
      RxList.filled(2, Listcreatefromframe1ItemModel());

  RxList<ListcreatefromframeTwoItemModel> listcreatefromframeTwoItemList =
      RxList.filled(2, ListcreatefromframeTwoItemModel());
}
