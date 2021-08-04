import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:multiplepolls/model/userdata.dart';
import 'package:multiplepolls/services/database.dart';
import 'package:provider/provider.dart';
class LeaderBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<FirebaseUser>(context);
    final _database = DatabaseService(uid: user.uid);
    final Future<NetCatChoices> catlist = _database.getCatNetPoll();
    return Scaffold(
      appBar: AppBar(
        title: Text('LeaderBoard'),
      ),
      body: ListView(
        children: [
          ListView(
            addSemanticIndexes: true,

          )
        ],
      ),
    );
  }
}
