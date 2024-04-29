import 'package:firebase_auth/firebase_auth.dart';
import 'package:untitled/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseManager{

  static CollectionReference<UserModel>getUsersCollection(){
    return FirebaseFirestore.instance.collection("User")
        .withConverter<UserModel>(
        fromFirestore: (snapshot, _){
          return UserModel.fromJson(snapshot.data()!);
        },
        toFirestore: (user, _){
          return user.toJson();
        },
    );
  }


  static Future<void> addUserToFirestore(UserModel user){
    var collection=getUsersCollection();
    var docRef=collection.doc(user.id);
    return docRef.set(user);

  }









  static Future<void>creatAccount(
      String name,
      String gender,
      int age,
      String smoke,
      String email,
      String password,
      Function onSuccess,
      Function onError)async{
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      UserModel userModel=UserModel(
          id: credential.user!.uid,
          name: name,
          age: age,
          email: email,
          smoke: smoke,
          gender: gender);
      credential.user!.sendEmailVerification();
      addUserToFirestore(userModel);
      onSuccess();
      credential.user?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        onError(e.message);
      } else if (e.code == 'email-already-in-use') {
        onError(e.message);
      }
    } catch (e) {
      print(e);
    }
  }
  static Future<void>login(String email, String password, Function onSuccess,Function onError)async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password
      );
      if(credential.user!.emailVerified){
        onSuccess();
      }
      else{
        onError("Please verify your mail");
      }

    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        onError(e.message);
      } else if (e.code == 'wrong-password') {
        onError(e.message);
      }
    }
  }





}