import 'package:basic_redux/model/dataModel.dart';
import 'package:basic_redux/model/viewModel.dart';
import 'package:basic_redux/widgets/HomeScreenWidgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
//If the second way is used this import is required so i'm just leaving it here
import 'package:basic_redux/redux/actions.dart';

class HomeScreen extends StatelessWidget {
  final Store<AppState> store;
  HomeScreen({this.store});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: StoreConnector<AppState , ViewModel>(
        converter: (Store<AppState> store) => ViewModel.create(store),
        builder: (BuildContext context , ViewModel viewModel) => Column(
          children: <Widget>[
            //Now wwe can pass viewModel variable which contains data of current Store to all the widgets below

            //A Button to Add an Item which displays text editor to input text from user
            AddItemWidget(viewModel: viewModel,),
            //Existing User to-do List
            Expanded(
              child: ItemListWidget(viewModel: viewModel),
            ),
            //Button to delete each adh every user to-do Entry
            RemoveAllItemsButton(viewModel: viewModel),

          ],
        ),
      ),
      drawer: SafeArea(
        child: Drawer(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Text(
                  'Menu Option 1',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Text(
                  'Menu Option 1',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Text(
                  'Menu Option 1',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Text(
                  'Menu Option 1',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),

            ],
          ),
        ),
      ) ,
      drawerDragStartBehavior: DragStartBehavior.start ,
    );
  }
}

//Following is Second Approach if you don't want to create separate ViewModel and separate HomeScreen Widgets
//Following has all the ViewModel and HomeScreen widgets together

//class HomeScreen extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(),
//      body: StoreConnector<AppState , _ViewModel>(
//        converter: (Store<AppState> store) => _ViewModel.create(store),
//        builder: (BuildContext context , _ViewModel viewModel) => Column(
//          children: <Widget>[
//            //Now wwe can pass viewModel variable which contains data of current Store to all the widgets below
//
//            //A Button to Add an Item which displays text editor to input text from user
//            AddItemWidget(model: viewModel,),
//            //Existing User to-do List
//            Expanded(
//              child: ItemListWidget(viewModel: viewModel),
//            ),
//            //Button to delete each adh every user to-do Entry
//            RemoveAllItemsButton(viewModel: viewModel),
//
//          ],
//        ),
//      ),
//      drawer: SafeArea(
//        child: Drawer(
//          child: Column(
//            children: <Widget>[
//              Padding(
//                padding: const EdgeInsets.symmetric(vertical: 30.0),
//                child: Text(
//                  'Menu Option 1',
//                  style: TextStyle(
//                    fontSize: 20.0,
//                  ),
//                ),
//              ),
//              Padding(
//                padding: const EdgeInsets.symmetric(vertical: 30.0),
//                child: Text(
//                  'Menu Option 1',
//                  style: TextStyle(
//                    fontSize: 20.0,
//                  ),
//                ),
//              ),
//              Padding(
//                padding: const EdgeInsets.symmetric(vertical: 30.0),
//                child: Text(
//                  'Menu Option 1',
//                  style: TextStyle(
//                    fontSize: 20.0,
//                  ),
//                ),
//              ),
//              Padding(
//                padding: const EdgeInsets.symmetric(vertical: 30.0),
//                child: Text(
//                  'Menu Option 1',
//                  style: TextStyle(
//                    fontSize: 20.0,
//                  ),
//                ),
//              ),
//
//            ],
//          ),
//        ),
//      ) ,
//      drawerDragStartBehavior: DragStartBehavior.start ,
//    );
//  }
//}
//
////View Model calss is the last interface between store and UI
//class _ViewModel {
//  //Decides what store items to display to this HomeScreen Class
//  //It helps when you have to display specific store items in this class
//  // In this case every store item is needed in to build this screen
//  //so we create variables to correspond to our store
//  final List<Item> itemList;
//  final Function(String) onAddItem;
//  final Function(Item) onRemoveItem;
//  final Function() removeAllItem;
//
//  _ViewModel({this.itemList, this.onAddItem, this.onRemoveItem, this.removeAllItem});
//  factory _ViewModel.create(Store<AppState> store) {
//    _onAddItem (String body) {
//      store.dispatch(AddItemAction( body: body));
//    }
//
//    _onRemoveItem (Item item) {
//      store.dispatch(RemoveItemAction(item: item));
//    }
//
//    _onRemoveAllItem() {
//      store.dispatch(RemoveAllItemAction());
//    }
//
//    return _ViewModel(
//        onAddItem: _onAddItem,
//        onRemoveItem: _onRemoveItem,
//        removeAllItem: _onRemoveAllItem,
//        itemList: store.state.itemList
//    );
//
//  }
//
//}
//
//
//class AddItemWidget extends StatefulWidget {
//  final _ViewModel model;
//  AddItemWidget({this.model});
//  @override
//  _AddItemWidgetState createState() => _AddItemWidgetState();
//}
//
//class _AddItemWidgetState extends State<AddItemWidget> {
//  //this widget displays a text box where user can enter new item in to-do list
//  final TextEditingController body = TextEditingController();
//  @override
//  Widget build(BuildContext context) {
//    return Padding(
//      padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
//      child: Wrap(
//        direction: Axis.horizontal,
//        children: <Widget>[
//          Container(
//            width: MediaQuery.of(context).size.width - 110,
//            child: TextFormField(
//              controller: body,
//              decoration: InputDecoration(
//                hintText: 'Enter new chore',
//                hintStyle: TextStyle(
//                  fontSize: 18.8,
//                  fontWeight: FontWeight.bold,
//                  fontStyle: FontStyle.italic,
//                ),
//              ),
//              onFieldSubmitted: (String newChore){
//                print(newChore);
//                widget.model.onAddItem(newChore);
//                body.text = '';
//              },
//            ),
//          ),
//          Container(
//            height: 70.0,
//            width: 100.0,
//            child: FlatButton(
//              onPressed:(){
//                print(body.text.trim());
//                widget.model.onAddItem(body.toString().trim());
//                body.text = '';
//              },
//              child: Text(
//                'Add',
//                style: TextStyle(
//                  fontSize: 18.8,
//                  fontWeight: FontWeight.bold,
//                  fontStyle: FontStyle.italic,
//                ),
//              ),
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//}
//
////This Widget displays the list of chores already added
//class ItemListWidget extends StatelessWidget {
//  final _ViewModel viewModel;
//  ItemListWidget({this.viewModel});
//  @override
//  Widget build(BuildContext context) {
//
//    return ListView(
//      children: viewModel.itemList.map((item) => ListTile(
//        title: Text(
//          item.body,
//          style: TextStyle(
//            fontSize: 15.0,
//            fontWeight: FontWeight.bold,
//            fontStyle: FontStyle.italic,
//          ),
//        ),
//        leading: IconButton(
//          icon: Icon(Icons.delete),
//          onPressed: ()=> viewModel.onRemoveItem(item),
//        ),
//      )).toList(),
//    );
//  }
//}
//
//
////This Widget displays button to delete every chore
//class RemoveAllItemsButton extends StatelessWidget {
//  final _ViewModel viewModel;
//  RemoveAllItemsButton({this.viewModel});
//  @override
//  Widget build(BuildContext context) {
//    return Center(
//      child: FlatButton(
//        onPressed: ()=> viewModel.removeAllItem(),
//        child: Text(
//          'All Done !!!',
//          style: TextStyle(
//            fontSize: 18.0,
//            fontWeight: FontWeight.bold,
//            fontStyle: FontStyle.italic,
//          ),
//        ),
//      ),
//    );
//  }
//}
