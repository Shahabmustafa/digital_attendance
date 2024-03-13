import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:digital_attendance/provider/loading_button_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationController extends LoadingButtonProvider{
  FirebaseAuth auth = FirebaseAuth.instance;

  login(String email,String password)async{
    addLoading(true);
    try{
      await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      addLoading(false);
    }catch(e){
      addLoading(false);
    }
  }


  signUp(String userName,String email,String password)async{
    addLoading(true);
    try{
      await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      FirebaseFirestore.
      instance.collection("user").
      doc(auth.currentUser!.uid).set({
        "userName" : userName,
        "email" : email,
      });
      addLoading(false);
    }catch(e){
      addLoading(false);
    }
  }
}