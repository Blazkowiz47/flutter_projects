import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'otpScreen.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _phoneNumber = TextEditingController();
  String phoneNumber = '';
  String countryCode = '+91';
  String error = '';
  final phoneNumberKey = GlobalKey() ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Hexcolor('#0CA9EC') , Hexcolor('#7ED8FE') ,Hexcolor('#E0EEF4'), Colors.white ],
              stops: [0.4,0.7,0.9,1],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 190.0, 0.0 , 0.0),
                  child: Container(
                    width: 80.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons8-twitter-256.png'),
                      ),
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ),
                SizedBox(height: 190.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CountryCodePicker(
                      initialSelection: '+91',
                      dialogSize: Size(MediaQuery.of(context).size.width - 100.0 , MediaQuery.of(context).size.height/2  ),
                      showFlagMain: true,
                      onChanged: (val) {
                        setState(() {
                          countryCode = val.code;
                        });
                      },
                    ),
                    SizedBox(width: 15.0,),
                    Container(
                      width: MediaQuery.of(context).size.width - 150.0 ,
                      child: Form(
                        child: TextFormField(
                          key: phoneNumberKey,
                          controller: _phoneNumber,
                          onChanged: (val) {
                            setState(() {
                              phoneNumber = _phoneNumber.value.text.trim();
                            });
                          },
                          keyboardType: TextInputType.number,
                          validator:(val) => val.length == 10 ? null : 'Enter 10-digit Number' ,
                        ),
                      ),
                    )

                  ],
                ),
                SizedBox(height: 20.0,),
                Center(child: Text(error)),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Container(
                    width: 200.0,
                    color: Colors.white,
                    child: FlatButton(
                      onPressed: () {
                        if((countryCode.isEmpty) || (phoneNumber.isEmpty) || (phoneNumber.length != 10)){
                          setState(() {
                            error = 'Please enter 10-digit number';
                            _phoneNumber.clear();
                          });
                        }
                        else {
                          setState(() {
                            error = '';
                          });
                          print(countryCode+phoneNumber);
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) => OtpScreen( phoneNumber : (countryCode+phoneNumber).trim())),
                          );
                        }
                      },
                      child: Container(
                        child: Text(
                          'Sign Up',
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
          ),
        )
    );
  }
}