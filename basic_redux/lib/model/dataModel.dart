import 'package:flutter/foundation.dart';


class Item {
  final int id;
  final String body;
  Item({
    @required this.id ,
    @required this.body
  });

  Item copyWith ({int id , String body}){
    return Item(
      body: body ?? this.body,
      id: id ?? this.id
    );
  }

  Item.fromJson ( Map savedMap )
    : body = savedMap['body'],
      id = savedMap['id'];

  Map toJson() => {
    'id' : id,
    'body' : body
  };

}

class AppState {
  final List <Item> itemList;
  AppState({
    @required this.itemList
  });

  //Initialising new initial state
  AppState.initialState() : itemList = List.unmodifiable(<Item>[]);

  AppState.fromJson(Map savedMap)
    : itemList = (savedMap['itemList'] as List).map((item) => Item.fromJson(item)).toList();

  Map toJson() => {'itemList' : itemList};

}