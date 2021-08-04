import 'package:flutter/material.dart';
import 'package:multiplepolls/SCREENS/home/userpoll.dart';
import 'package:multiplepolls/model/userdata.dart';
import 'package:multiplepolls/services/auth.dart';
import 'package:multiplepolls/shared/loading.dart';

class Home1 extends StatefulWidget {
  final UserChoices userChoices;
  Home1({this.userChoices});
  @override
  _Home1State createState() => _Home1State( userChoices: userChoices );
}

class _Home1State extends State<Home1> {
  final UserChoices userChoices;
  _Home1State({this.userChoices});
  bool loading = false;
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return loading ? Loading() : Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent[200],
          title: Text('HomeScreen'),
          elevation: 0.0,
          actions:<Widget> [
            FlatButton.icon(
                onPressed: () async {
                  setState(() => loading = true);
                  dynamic result =  await _auth.signOutFromGoogleAccount();
                  if(result == null){
                    setState(() => loading = false);
                  }
                },
                label: Text('Logout'),
                icon: Icon(Icons.person),
                textColor: Colors.white,
            ),
          ],
        ),
        backgroundColor: Colors.lightBlueAccent[100],
        body: Container(
          child:ListView(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
                child: Text(
                  'YOU CAN VOTE FOR DOGS:',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Avenir',
                  ),
                ),
              ),
              UserPollData(userChoices: userChoices,),
//              Padding(
//                padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
//                child: Text(
//                  'Want to know which breed is most popular?',
//                  style: TextStyle(
//                    fontSize: 25.0,
//                    fontWeight: FontWeight.w600,
//                    fontFamily: 'Avenir',
//                  ),
//                ),
//              ),
            ],
          ),
        ),

      );
  }
}
