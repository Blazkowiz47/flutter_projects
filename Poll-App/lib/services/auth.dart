import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:multiplepolls/services/database.dart';

class AuthService{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  //Auth change stream
  Stream<FirebaseUser> get user {
    return _auth.onAuthStateChanged;
  }
  //Signing in wih Google
  Future signInWithGoogle() async {
    try{
      final GoogleSignInAccount _account = await _googleSignIn.signIn();
      final GoogleSignInAuthentication _googleSignInAuthentication =
      await _account.authentication;
      final AuthCredential _credential = GoogleAuthProvider.getCredential(
        accessToken: _googleSignInAuthentication.accessToken,
        idToken: _googleSignInAuthentication.idToken,
      );

      AuthResult result =  await _auth.signInWithCredential(_credential);
      FirebaseUser user = result.user;
      //Cross checking whether user is not anonymous and whether credentials are not null
      assert(!user.isAnonymous);
      assert(await user.getIdToken() != null);

      //Cross checking the current user is the user logged in
      final FirebaseUser currentUser = await _auth.currentUser();
      assert(user.uid == currentUser.uid);

      //Collecting User data from database
      DatabaseService _userData = DatabaseService(uid: user.uid);
      await _userData.checkUserData();
      //await DatabaseService(uid: user.uid).updateUserData(1,1);

      return user.uid;
    }
    catch(e){
      print(e.toString());
      return null;
    }


  }

  //Signing out from google account
  Future signOutFromGoogleAccount() async{
    try{
      await _googleSignIn.signOut();
      await _auth.signOut();
      return 'Signed Out';
    }
    catch(e){
      print(e.toString());
      return null;
    }
  }


}