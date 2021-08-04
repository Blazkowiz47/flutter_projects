import 'package:flutter/material.dart';
import 'package:multiplepolls/services/auth.dart';
import 'package:multiplepolls/shared/loading.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  final AuthService _auth = AuthService() ;
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return loading ? Loading() :  Scaffold(
      appBar: AppBar(
        title: Text('Polling App'),
        centerTitle: true,
      ),
      backgroundColor: Colors.lightBlueAccent[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Text(
              'Sign In To Poll',
              style: TextStyle(
                color: Colors.lightBlueAccent[700],
                fontSize: 40.0,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(height: 80.0,),
            RaisedButton(
              color: Colors.lightBlueAccent[200],
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Sign in with  Google',
                      style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(width: 12.0,),
                    Icon(
                      Icons.email,
                      size: 30.0,
                      color: Colors.indigo,
                    ),
                  ],
                ),
              ),
              textTheme: ButtonTextTheme.primary,
              onPressed: () async {
                setState(() => loading = true);
                dynamic result =  await _auth.signInWithGoogle();
                if(result == null){
                  setState(() => loading = false);
                  print('Error');
                }
              },
            ),

          ],
        ),
      ),
    );
  }
}
