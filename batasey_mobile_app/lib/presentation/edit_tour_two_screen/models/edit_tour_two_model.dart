import 'package:get/get.dart';
import 'dates6_item_model.dart';
import 'listcreatefromframe3_item_model.dart';
import 'listcreatefromframe_two2_item_model.dart';

class EditTourTwoModel {
  RxList<Dates6ItemModel> dates6ItemList = RxList.filled(7, Dates6ItemModel());

  RxList<Listcreatefromframe3ItemModel> listcreatefromframe3ItemList =
      RxList.filled(2, Listcreatefromframe3ItemModel());

  RxList<ListcreatefromframeTwo2ItemModel> listcreatefromframeTwo2ItemList =
      RxList.filled(2, ListcreatefromframeTwo2ItemModel());
}
