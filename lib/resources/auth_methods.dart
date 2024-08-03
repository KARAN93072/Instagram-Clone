import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  String res = ' Something went wronng';
  Future<String> signUpUser(
      {required String name,
      required String username,
      required String email,
      required String password}) async {
    String res = 'Something wrong';
    try {
      if (name.isNotEmpty ||
          username.isNotEmpty ||
          email.isNotEmpty ||
          password.isNotEmpty) {
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);

        _firestore.collection('users').doc(cred.user!.uid).set({
          'name': name,
          'username': username,
          'email': email,
          'password': password,
          'userId': cred.user!.uid,
          'followers': [],
          'followiing': []
        });
      }
    } catch (e) {
      print(e);
    }
    return res;
  }
}
