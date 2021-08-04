import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:totp/input.dart';
import 'otp.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String barcode = "";
  num totp = 0;
  String status = "";
  int val = 0;
  Timer? cd;
  @override
  void dispose() {
    cd?.cancel();
    super.dispose();
  }

  void _randomNumber() {
    setState(() {
      status = "Generating random number and starting countdown";
      countdown();
      //print('$barcode');

      setState(() {
        totp = OTP.generateTOTPCode(
          context,
          barcode.toString(),
          DateTime.now().millisecondsSinceEpoch,
        );
        status = "generated totp = $totp";
      });
//      if (val == 0) {
//        //totp =  Random().nextInt(999999) + 100000;
//        totp = OTP.generateTOTPCode(
//            barcode.toString(),  DateTime.now().millisecondsSinceEpoch);
//      }
    });
  }

  int _start = 30;
  void countdown() {
    //print("countdown() called");
    print(DateTime.now());
    double seconds =
        double.parse(DateTime.now().toString().split(":").last.toString());

    setState(() {
      _start = (30 - (seconds.ceil() % 30)).toInt();
    });
    print(seconds);
    print("session:");
    print(_start);
    cd = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        //print(DateTime.now());
        if (_start == 0) {
          _start = 30;
          setState(() {
            print(totp);
            _start = 30;
            totp = OTP.generateTOTPCode(
              context,
              barcode.toString(),
              DateTime.now().millisecondsSinceEpoch,
            );
          });
        } else {
          setState(() {
            _start--;
          });
        }
      });
    });
  }

  void _scan() {
    if (cd != null) {
      cd!.cancel();
    }
    setState(() {
      status = "Scan clicked";
    });
    scan();
  }

  Future scan() async {
    try {
      print(_codeController.text.toString().trim());
      setState(() {
        status = "Scan executing";
      });
      if (_codeController.text.toString() == "") {
        throw PlatformException(code: "he", message: "No code input");
      }
      setState(() => this.barcode = _codeController.text.toString());
      setState(() {
        status = "Scan executed";
        _randomNumber();
      });
    } on PlatformException catch (e) {
      setState(() {
        status = "Platform Exception  ${e.message}";
        this.barcode = 'Unknown error: $e';
      });
    } on FormatException {
      setState(() {
        status = "Format error nothing to scan ";
        this.barcode = 'Nothing Scan';
      });
    } catch (e) {
      setState(() {
        status = "Scan error  ${e.toString()}";
        this.barcode = 'Unknown error: $e';
      });
    }
  }

  final TextEditingController _codeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    print(widget.title);

    String? showOtp;
    if (totp.toString().length == 7) {
      showOtp = totp.toString();
    } else {
      for (int i = 0; i < (7 - totp.toString().length); i++) {
        showOtp = (showOtp ?? "") + "0";
      }
      showOtp = (showOtp ?? "") + totp.toString();
    }
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("T-OTP"),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  InputField(
                    hintText: "Enter code here",
                    shouldObscure: true,
                    controller: _codeController,
                    initialText: widget.title,
                  ),
                  ListTile(
                    leading: const Icon(Icons.timelapse),
                    title: Text(
                      showOtp,
                      style:
                          TextStyle(color: Colors.deepPurple, fontSize: 30.50),
                    ),
                    subtitle: Text('Time-Based OTP'),
                  ),
                  ButtonTheme(
                    child: ButtonBar(
                      children: <Widget>[
                        Text(
                          _start.toString(),
                          style: TextStyle(fontSize: 30.50),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Text(status),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _scan,
        tooltip: 'Enter Code',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
