import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:multiplepolls/SCREENS/home/home1.dart';
import 'package:multiplepolls/model/userdata.dart';
import 'package:multiplepolls/services/database.dart';
import 'package:multiplepolls/shared/loading.dart';
import 'package:provider/provider.dart';
class Home0 extends StatefulWidget {
  @override
  _Home0State createState() => _Home0State();
}

class _Home0State extends State<Home0> {
  @override
  Widget build(BuildContext context) {
    final user =  Provider.of<FirebaseUser>(context);
    final userData = DatabaseService(uid: user.uid);
    return StreamBuilder<UserChoices>(
      stream: userData.userChoicesData,
      builder: (context, snapshot) {
        if (snapshot.hasData){
          return Home1(userChoices: snapshot.data,);
        }
        else{
          return Loading();
        }
      }
    );
    //userData.TextFunction(animal: 'cat' , vote: 1 , data: UserChoices(uid: user.uid , dogchoice: 1 , catchoice:  1 ));
//    return SafeArea(
//      child: Text(
//        'Hello',
//      ),
//    );
  }
}
