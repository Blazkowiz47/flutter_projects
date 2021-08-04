import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:multiplepolls/SCREENS/polling/successfullPoll.dart';
import 'package:multiplepolls/model/userdata.dart';
import 'package:multiplepolls/services/database.dart';
import 'package:multiplepolls/shared/breedsdata.dart';
import 'package:provider/provider.dart';

class Poll extends StatefulWidget {
  final int breed;
  final String animal;
  final UserChoices userChoices;
  Poll({this.animal , this.breed ,this.userChoices});
  @override
  _PollState createState() => _PollState(no: breed , animal: animal , userChoices : userChoices );
}

class _PollState extends State<Poll> {
  final int no;
  final String animal;
  final UserChoices userChoices;

  _PollState({this.animal , this.no , this.userChoices});
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<FirebaseUser>(context);
    final DatabaseService _user = DatabaseService(uid: user.uid);
    return Scaffold(
          backgroundColor: Colors.lightBlueAccent[100],
          appBar: AppBar(
            title: Text(
              'Vote Your Favourite',
              style: TextStyle(
                fontFamily: 'Avenir',
                fontWeight: FontWeight.w500,
                fontSize: 25.0,
              ),
            ),
            backgroundColor: Colors.lightBlueAccent[200],
          ),
          body: ListView(
//        mainAxisAlignment: MainAxisAlignment.start,
//        crossAxisAlignment: CrossAxisAlignment.stretch,
            //direction: Axis.vertical,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 30.0, 0.0, 0.0),
                child: Text(
                  animal == 'cat' ? cats[no].name : dogs[no].name,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 35.0,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Avenir',
                    color: Colors.lightBlue,
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.width,
                child:Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Swiper(
                    itemCount: 6,
                    itemWidth: MediaQuery.of(context).size.width,
                    layout: SwiperLayout.TINDER,
                    itemHeight: 400.0,
                    pagination: SwiperPagination(
                      builder: DotSwiperPaginationBuilder(
                        activeSize: 18.0,
                        space: 6.0,
                      ),
                    ),
                  itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/${animal}breeds/${animal}breed${no+1}_${index}.jpg'),
                              ),
                            ),
                          ),
                        ),
                      );
                  },
                  ),
                ) ,
              ),
              SizedBox(height: 1.0,),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                      animal == 'cat' ? cats[no].description : dogs[no].description,
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 20.0,
                      ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0 , vertical: 20.0),
                child: FlatButton(
                  color: Colors.lightBlue[300],
                  padding: EdgeInsets.symmetric(horizontal: 20.0 , vertical: 10.0),
                  onPressed: () async {
                    if(userChoices != null){
                      if(animal == 'cat'){
                        await _user.updateUserData(catchoice: no+1 , dogchoice: userChoices.dogchoice);
                        await _user.setNetPoll(data: userChoices , animal: animal , vote: no+1);
                      }
                      else{
                        await  _user.updateUserData(catchoice: userChoices.catchoice , dogchoice: no +1);
                        await _user.setNetPoll(data: userChoices , animal: animal , vote: no+1);

                      }
                    }
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SuccessFUllPoll()));
                  },

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                      'VOTE FOR ME',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ]
                  ),
                ),
              ),
            ],
          ),
        );

  }
}
