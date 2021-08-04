import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:multiplepolls/SCREENS/authentication/Authenticate.dart';
import 'package:provider/provider.dart';
import 'home/home0.dart';

class Wrapper extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<FirebaseUser>(context);
    return MaterialApp(
        home: user == null ?  Authenticate() : Home0(),
    );
  }
}
