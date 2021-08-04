import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:multiplepolls/SCREENS/polling/alreadyPolled.dart';
import 'package:multiplepolls/SCREENS/polling/poll.dart';
import 'package:multiplepolls/model/userdata.dart';
import 'package:multiplepolls/shared/breedsdata.dart';

class CatPoll extends StatefulWidget {
  final UserChoices userChoices;
  CatPoll({this.userChoices});
  @override
  _CatPollState createState() => _CatPollState(userChoices: userChoices);
}

class _CatPollState extends State<CatPoll> {
  final animal = 'cat';
  final UserChoices userChoices;
  _CatPollState({this.userChoices});
  var color = Colors.white;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Scaffold(
          backgroundColor: Colors.lightBlueAccent[100],
          body: Container(
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 44.0, 44.0,  44.0),
                    child: Wrap(
                      children : [
                        Text(
                          'Cats',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 44.0,
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                            letterSpacing: 2.0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text(
                            'Vote for following Cat breeds',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Avenir',
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 500.0,
                    child: Swiper(
                      itemCount: cats.length,
                      itemWidth: MediaQuery.of(context).size.width - 2*64,
                      layout: SwiperLayout.STACK,
                      pagination: SwiperPagination(
                        builder: DotSwiperPaginationBuilder(
                          activeSize: 18.0,
                          space: 6.0,
                        ),
                      ),
                      itemBuilder: (context , index){
                        var cardColor;
                        String displayText;
                        var newWidget;
                        if (index + 1 == userChoices.catchoice ){
                          cardColor = Colors.lightBlueAccent[100];
                          displayText = 'Your Choice !!!';
                          newWidget = AlreadyPoll(animal: 'cat', breed: index, userChoices: userChoices,);
                        }
                        else{
                          cardColor = Colors.white;
                          displayText = 'Know more and vote' ;
                          newWidget = Poll(animal: 'cat', breed: index, userChoices: userChoices,);
                        }
                        return InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                               builder: (context) => newWidget,
                            ));
                          },
                          child: Stack(
                            children:<Widget> [
                              Column(
                                children: [
                                  //SizedBox(height: 100.0,),
                                  ClipRRect(
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(cats[index].image),
                                      radius: 70.0,
                                    ),
                                  ),
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0) , bottomRight: Radius.circular(40.0)),
                                    ),
                                    elevation: 8.0,
                                    color: cardColor,
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 100.0,),
                                          Text(
                                            cats[index].name,
                                            style: TextStyle(
                                              fontFamily: 'Avenir',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 40.0,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                displayText,
                                                style: TextStyle(
                                                  color: Colors.lightBlue,
                                                  fontSize: 17.0,
                                                  fontFamily: 'Avenir',
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                              Icon(Icons.arrow_forward ,color: Colors.lightBlue,),

                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                ],
                              ),

                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
  }
}
