import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:otpverification/screens/signupscreens/SignUp.dart';
import 'package:otpverification/screens/signupscreens/otpScreen.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final TextEditingController _phoneNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/signup' : (context) => SignUp(),
        '/signup/otpscreen' : (context) => OtpScreen(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Hexcolor('#0CA9EC'),
        accentColor: Hexcolor('#E1DADA'),
        scaffoldBackgroundColor: Colors.white,
      ),
//      home: HomeScreen(),
      home: SignUp(),

    );
  }
}
