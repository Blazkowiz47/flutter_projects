import 'dart:async';
import 'dart:convert';
import 'package:basic_redux/model/dataModel.dart';
import 'package:basic_redux/redux/actions.dart';
import 'package:redux/redux.dart';
import 'package:shared_preferences/shared_preferences.dart';

void saveToPrefs (AppState state) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  var string = json.encode(state.toJson());
  await preferences.setString('itemsState', string);

}

Future<AppState> loadFromPrefs () async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  var string = preferences.getString('itemsState');
  if ( string != null ) {
    print('------------------------------------------------------------------');
    print('Lol why is this executing');
    print(string);
    print('------------------------------------------------------------------');
    Map map  = json.decode(string);
    return AppState.fromJson(map);
  }

  return AppState.initialState();

}

void appStateMiddleware ( Store<AppState> store , action , NextDispatcher next ) async {
  next(action);
  if (action is AddItemAction ||
      action is RemoveItemAction ||
      action is RemoveAllItemAction) {
    saveToPrefs(store.state);
  }

  if (action is GetItemsAction) {
    await loadFromPrefs().then((state) => store.dispatch(LoadedItemsAction(itemList: state.itemList)));
  }

}