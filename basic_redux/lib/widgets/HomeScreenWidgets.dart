import 'package:basic_redux/model/dataModel.dart';
import 'package:basic_redux/model/viewModel.dart';
import 'package:flutter/material.dart';

//In this file we define all the widgets needed for constructing the state of HomeScreen

class AddItemWidget extends StatefulWidget {
  final ViewModel viewModel;
  AddItemWidget({this.viewModel});
  @override
  _AddItemWidgetState createState() => _AddItemWidgetState();
}

class _AddItemWidgetState extends State<AddItemWidget> {
  //this widget displays a text box where user can enter new item in to-do list
  final TextEditingController body = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
      child: Wrap(
        direction: Axis.horizontal,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width - 110,
            child: TextFormField(
              controller: body,
              decoration: InputDecoration(
                hintText: 'Enter new chore',
                hintStyle: TextStyle(
                  fontSize: 18.8,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              onFieldSubmitted: (String newChore){
                print(newChore);
                widget.viewModel.onAddItem(newChore);
                body.text = '';
              },
            ),
          ),
          Container(
            height: 70.0,
            width: 100.0,
            child: FlatButton(
              onPressed:(){
                print(body.text.trim());
                widget.viewModel.onAddItem(body.text.trim());
                body.text = '';
              },
              child: Text(
                'Add',
                style: TextStyle(
                  fontSize: 18.8,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



//This Widget displays the list of chores already added
class ItemListWidget extends StatelessWidget {
  final ViewModel viewModel;
  ItemListWidget({this.viewModel});
  @override
  Widget build(BuildContext context) {

    return ListView(
      children: viewModel.itemList.map((Item item) => ListTile(
        title: Text(
          item.body,
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.delete),
          onPressed: ()=> viewModel.onRemoveItem(item),
        ),
      )).toList(),
    );
  }
}


//This Widget displays button to delete every chore
class RemoveAllItemsButton extends StatelessWidget {
  final ViewModel viewModel;
  RemoveAllItemsButton({this.viewModel});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () => viewModel.removeAllItem(),
        child: Text(
          'All Done !!!',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}
