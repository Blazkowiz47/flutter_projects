import 'package:basic_redux/model/dataModel.dart';
import 'actions.dart';

AppState appStateReducer ( AppState prevState , action )  {
  return AppState(
    itemList: listItemReducer(prevState.itemList, action)
  );
}

List<Item> listItemReducer ( List<Item> prevList , action ) {

  if(action is AddItemAction) {
    return []
        ..addAll(prevList)
        ..add(Item(id: action.id , body:  action.body));
  }

  else if ( action is RemoveItemAction) {
    return List.unmodifiable(List.from(prevList)..remove(action.item));
  }

  else if (action is RemoveAllItemAction) {
    return List.unmodifiable([]);
  }

  else if (action is LoadedItemsAction) {
    return action.itemList;
  }

  return prevList;

}