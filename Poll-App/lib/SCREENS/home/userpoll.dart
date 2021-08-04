import 'package:flutter/material.dart';
import 'package:multiplepolls/SCREENS/polling/catPoll.dart';
import 'package:multiplepolls/SCREENS/polling/dogpoll.dart';
import 'package:multiplepolls/model/userdata.dart';



class UserPollData extends StatefulWidget {
  final UserChoices userChoices;
  UserPollData({this.userChoices});
  @override
  _UserPollDataState createState() => _UserPollDataState(userChoices: userChoices);
}

class _UserPollDataState extends State<UserPollData> {
  final UserChoices userChoices;
  _UserPollDataState({this.userChoices});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => DogPoll(userChoices:userChoices) ));
          },
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
            child: Container(
              height: MediaQuery.of(context).size.height/4,
              width: MediaQuery.of(context).size.width  - 2*64,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/dog.jpg'),
                  fit: BoxFit.fill,
                  alignment: Alignment.center,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20.0,),
        Text(
          'OR YOU CAN VOTE FOR CATS:',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20.0,),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => CatPoll(userChoices:userChoices) ));
          },
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
            child: Container(
              height: MediaQuery.of(context).size.height/4,
              width: MediaQuery.of(context).size.width  - 2*64,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/cat.jpg'),
                  fit: BoxFit.fill,
                  alignment: Alignment.center,
                ),
              ),
            ),
          ),
        ),
      ],
    );

  }
}
