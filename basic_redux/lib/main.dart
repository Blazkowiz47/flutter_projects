import 'package:basic_redux/model/dataModel.dart';
import 'package:basic_redux/redux/actions.dart';
import 'package:basic_redux/redux/middleWare.dart';
import 'package:basic_redux/redux/reducers.dart';
import 'package:basic_redux/screens/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final Store<AppState> store = Store<AppState>(
    appStateReducer,
    middleware: [appStateMiddleware],
    initialState: AppState.initialState(),
  );
  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark(),
        home: StoreBuilder(
          onInit: (store) => store.dispatch(GetItemsAction()),
          builder: (BuildContext context , Store<AppState> store) => HomeScreen(store: store,),
        ),
      ),
    );
  }
}

