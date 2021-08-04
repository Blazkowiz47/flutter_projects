import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:multiplepolls/model/userdata.dart';

class DatabaseService {

  final String uid;
  //Collection Reference
  final CollectionReference _netpoll = Firestore.instance.collection('netpoll');
  final CollectionReference _userpoll = Firestore.instance.collection('userpoll');

  DatabaseService({this.uid});


  Future updateUserData( {int catchoice , int dogchoice }) async {
    return await _userpoll.document(uid).setData({
        'catchoice' : catchoice,
        'dogchoice' : dogchoice,
      }
    );
  }
  Future checkUserData() async {
    //In case the user has logged in for first time the dummy poll is stored
    _userpoll.document(uid).get().then((value) => value.exists ? null : updateUserData(dogchoice: 0 , catchoice: 0) );;
  }



  //UserData From Snapshot
  UserChoices _userDataFromSnapshot(DocumentSnapshot snapshot){
    return UserChoices(
        uid: snapshot.documentID,
        catchoice: snapshot.data['catchoice'] ?? 0,
        dogchoice: snapshot.data['dogchoice'] ?? 0,
    );
  }
  NetCatChoices _netCatChoicesFromSnapshot(DocumentSnapshot snapshot){
    return NetCatChoices(
      catBreed1: snapshot.data['1'] ?? 0,
      catBreed2: snapshot.data['2'] ?? 0,
      catBreed3: snapshot.data['3'] ?? 0,
      catBreed4: snapshot.data['4'] ?? 0,

    );
  }
  NetDogChoices _netDogChoicesFromSnapshot(DocumentSnapshot snapshot){
    return NetDogChoices(
      dogBreed1: snapshot.data['1'] ?? 0,
      dogBreed2: snapshot.data['2'] ?? 0,
      dogBreed3: snapshot.data['3'] ?? 0,
      dogBreed4: snapshot.data['4'] ?? 0,
    );
  }
  //Get userdata in userchoices model

  Future<UserChoices> getUserData () async {
    return await _userpoll.document(uid).get().then((value) => value.exists ? _userDataFromSnapshot(value) : UserChoices(uid: uid, dogchoice: 0 , catchoice:  0,));
  }

  Stream<UserChoices> get userChoicesData {
    return _userpoll.document(uid).snapshots()
        .map(_userDataFromSnapshot);
  }

  Future TextFunction ({UserChoices data , String animal , int vote}) async {
    NetCatChoices cats = await _netpoll.document('cat').get().then((value) => _netCatChoicesFromSnapshot(value));
    NetDogChoices dogs = await _netpoll.document('dog').get().then((value) => _netDogChoicesFromSnapshot(value));
    print('-----------------------------------');
    print(cats.catBreed1);
    print(dogs.dogBreed2);
    print('-----------------------------------');

  }
  Future setNetPoll ({UserChoices data , String animal , int vote}) async {
    NetCatChoices cats = await _netpoll.document('cat').get().then((value) => _netCatChoicesFromSnapshot(value));
    NetDogChoices dogs = await _netpoll.document('dog').get().then((value) => _netDogChoicesFromSnapshot(value));
    if(animal == 'cat'){
      if(data.catchoice != 0){
        switch (data.catchoice){
          case 1:
            cats.catBreed1 -= 1;
            break;
          case 2:
            cats.catBreed2 -= 1;
            break;
          case 3:
            cats.catBreed3 -= 1;
            break;

          case 4:
            cats.catBreed4 -= 1;
            break;

        }
        switch (vote){
          case 1:
            cats.catBreed1 += 1;
            break;
          case 2:
            cats.catBreed2 += 1;
            break;
          case 3:
            cats.catBreed3 += 1;
            break;

          case 4:
            cats.catBreed4 += 1;
            break;

        }


      }
    }
    else{
      switch (data.dogchoice){
        case 1:
          dogs.dogBreed1 -= 1;
          break;

        case 2:
          dogs.dogBreed2 -= 1;
          break;

        case 3:
          dogs.dogBreed3 -= 1;
          break;

        case 4 :
          dogs.dogBreed4 -= 1;
          break;
      }

      switch (vote){
        case 1:
          dogs.dogBreed1 += 1;
          break;

        case 2:
          dogs.dogBreed2 += 1;
          break;

        case 3:
          dogs.dogBreed3 += 1;
          break;

        case 4 :
          dogs.dogBreed4 += 1;
          break;
      }


    }
    await _netpoll.document('cat').setData({
      '1': cats.catBreed1,
      '2': cats.catBreed2,
      '3': cats.catBreed3,
      '4': cats.catBreed4,
    });

    await _netpoll.document('dog').setData({
    '1': dogs.dogBreed1,
    '2': dogs.dogBreed2,
    '3': dogs.dogBreed3,
    '4': dogs.dogBreed4,
    });
  }

  Future<NetCatChoices> getCatNetPoll  () async{
    return await _netpoll.document('cat').get().then((value) => _netCatChoicesFromSnapshot(value));
  }
  Future<NetDogChoices> getDogNetPoll () async {
    return await _netpoll.document('dog').get().then((value) => _netDogChoicesFromSnapshot(value));
  }

}