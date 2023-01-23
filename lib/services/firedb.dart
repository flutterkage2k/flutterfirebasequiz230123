import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FireDB {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  createNewUser(String name, String email, String photoUrl, String uid) async {
    final User? current_user = _auth.currentUser;
    if (await getUser()) {
      print("User already exists");
    } else {
      await FirebaseFirestore.instance.collection("users").doc(current_user!.uid).set(
        {
          "name": name,
          "email": email,
          "photoUrl": photoUrl,
          "money": "5000",
        },
      ).then(
        (value) {
          print("사용자 등록을 DB에 기록하였습니다.");
        },
      );
    }
  }

  Future<bool> getUser() async {
    final User? current_user = _auth.currentUser;
    String user = "";

    await FirebaseFirestore.instance.collection("users").doc(current_user!.uid).get().then((value) {
      user = value.data().toString();
    });
    if (user.toString() == "null") {
      return false;
    } else {
      return true;
    }
  }
}
