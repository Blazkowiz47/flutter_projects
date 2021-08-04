import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:otpverification/screens/homechat.dart';

class OtpScreen extends StatefulWidget {
  final String phoneNumber;
  OtpScreen({this.phoneNumber});
  @override
  _OtpScreenState createState() => _OtpScreenState(phoneNumber: phoneNumber);
}

class _OtpScreenState extends State<OtpScreen> {
  final String phoneNumber;
  _OtpScreenState({this.phoneNumber});
  final TextEditingController _otp = TextEditingController();
  String status = '' ; //Status string
  String verificationID; // Contains the verification ID
  AuthCredential userCredential;

  Future verifyPhone (String phoneNumber) async {

    //Defining few methods first

    final PhoneCodeSent phoneCodeSent = (String verID , [int forceResendingToken]) {
      //this method is called when otp is sent to user
      setState(() {
        verificationID = verID;//verification ID is set to actual ID that is provided when Phone Code is Sent
        status = 'Phone COdE HAS been Sent and ver ID is\n$verificationID';
      });
    };

    final PhoneCodeAutoRetrievalTimeout autoRetrievalTimeout = (String verID) {
      //this method is called when auto retrieval timeout is over
      setState(() {
        verificationID = verID;//verification ID is set to actual ID that is provided when Phone Code is Sent
        status = "\nAuto retrieval time out";
      });
    };

    final PhoneVerificationFailed verificationFailed = (AuthException e) {
      setState(() {
        status = '\n failed';
        print(e.message);
      });
    };

    final PhoneVerificationCompleted verificationCompleted = (AuthCredential credential) {
      setState(() {
        status = 'Success';
        userCredential = credential;
        print(credential.providerId.toLowerCase());
      });
    };


    //Method to start verification process
    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: phoneNumber,//phone-number is supplied
        timeout: Duration(seconds : 10),//timeout duration
        verificationCompleted: verificationCompleted,
        verificationFailed: verificationFailed,
        codeSent: phoneCodeSent,
        codeAutoRetrievalTimeout: autoRetrievalTimeout
    );

  }

  Future signIn (String verID , AuthCredential credential , String otp)  {
    if (credential == null) {
      //In-case Auto retrieve doesn't work
      setState(() {
        credential = PhoneAuthProvider.getCredential(verificationId: verID, smsCode: otp);
        print(credential.providerId.toLowerCase());
        status = 'Success 2';
      });
      FirebaseAuth.instance.signInWithCredential(credential);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
    }
    else{
      //In-case Auto retrieve works
      status = 'Success';
      FirebaseAuth.instance.signInWithCredential(credential);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
    }
  }

  void initState () {
    super.initState();
    verifyPhone(phoneNumber);
  }


  @override
  Widget build(BuildContext context) {
    //Starting verification
    print(phoneNumber);
    return Material(
      color: Colors.white,
      child: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40.0,),
              Container(
                width: 300.0,
                child: TextField(
                  controller: _otp,
                  keyboardType: TextInputType.number ,
                  decoration: InputDecoration(
                    hintText: 'Enter Otp',
                    hintStyle: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40.0,),
              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)
                ),
                onPressed: (){
                  if (_otp.value.text == ''){
                    setState(() {
                      status = 'Please enter OTP';
                    });
                  }
                  else{
                    signIn(verificationID, userCredential, _otp.value.text.trim());
                  }
                },
                color: Hexcolor('#7ED8FE'),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0 , horizontal: 25.0),
                  child: Text(
                    'Verify',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Hexcolor('#007AD9'),
                    ),
                  ),
                ) ,
              ),
              SizedBox(height: 20.0,),
              Text(status),
            ],
          ),

        ),
      ),
    );
  }
}
