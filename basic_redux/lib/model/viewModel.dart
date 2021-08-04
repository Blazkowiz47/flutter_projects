import 'package:basic_redux/model/dataModel.dart';
import 'package:basic_redux/redux/actions.dart';
import 'package:redux/redux.dart';

class ViewModel {
  //Decides what store items to display to this HomeScreen Class
  //It helps when you have to display specific store items in this class
  // In this case every store item is needed in to build this screen
  //so we create variables to correspond to our store
  final List<Item> itemList;
  final Function(String) onAddItem;
  final Function(Item) onRemoveItem;
  final Function() removeAllItem;

  ViewModel({this.itemList, this.onAddItem, this.onRemoveItem, this.removeAllItem});
  factory ViewModel.create(Store<AppState> currentStore) {
    _onAddItem (String body) {
      currentStore.dispatch(AddItemAction( body: body ));
    }

    _onRemoveItem (Item item) {
      currentStore.dispatch(RemoveItemAction(item: item));
    }

    _onRemoveAllItem() {
      currentStore.dispatch(RemoveAllItemAction());
    }

    return ViewModel(
        onAddItem: _onAddItem,
        onRemoveItem: _onRemoveItem,
        removeAllItem: _onRemoveAllItem,
        itemList: currentStore.state.itemList
    );

  }

}
