import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otpverification/screens/signupscreens/SignUp.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _value = '1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor ,
        title: Text(
          'CoFab',
          style: GoogleFonts.fondamento(
            textStyle: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
              letterSpacing: 2.0,
              color: Colors.white,
            ),
          ),
        ),

        actions: [
          InkWell(
            splashColor: Colors.lightBlue,
            borderRadius: BorderRadius.circular(80.0) ,
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 2.0),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.search,
                  size: 30.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0,vertical: 0.0),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.more_vert,
                size: 30.0,
                color: Colors.white,
              ),
            ),
          ),


        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 15.0),
        child: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          onPressed: (){},
          child: Icon(
            Icons.message,
            color: Colors.white,
            size: 30.0,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(child: Text(
            '\t\t\t\t\t\t\t\t\tCongrats \n You are signed up',
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: '${GoogleFonts.fondamento()}',
              ),
            ),
          ),
          SizedBox(height: 50.0,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Container(
              width: 200.0,
              color: Colors.white,
              child: FlatButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUp()));
                },
                child: Container(
                  child: Text(
                    'Sign Out',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: '${GoogleFonts.fondamento()}',
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}