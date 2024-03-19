
import 'package:firebase_auth/firebase_auth.dart';

class SignupRepository{
  var auth = FirebaseAuth.instance;

  Future<void> registerUser({required String email, required String password}) async{
    await auth.createUserWithEmailAndPassword(email: email, password: password);
  }

  Future<bool> loginUser({required String email, required String password}) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}