import 'package:basic_redux/model/dataModel.dart';

class AddItemAction {
  static int _id = 0;
  final String body;
  AddItemAction({this.body}){
   _id++;
  }
  int get id => _id;
}

class RemoveItemAction {
  final Item item;
  RemoveItemAction({this.item});
}
class RemoveAllItemAction {}

class GetItemsAction {}

class LoadedItemsAction{
  //Used to get data from Shared Preferences to UI
  final List<Item> itemList;
  LoadedItemsAction({this.itemList});
}