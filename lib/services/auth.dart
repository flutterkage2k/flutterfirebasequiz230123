import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutterfirebasequiz230123/services/firedb.dart';
import 'package:flutterfirebasequiz230123/services/localdb.dart';
import 'package:google_sign_in/google_sign_in.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();

Future<User?> signWithGoogle() async {
  // try {
  final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
  final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount!.authentication;

  final AuthCredential credential = GoogleAuthProvider.credential(
    idToken: googleSignInAuthentication.idToken,
    accessToken: googleSignInAuthentication.accessToken,
  );

  final usercredential = await _auth.signInWithCredential(credential);

  final User? user = usercredential.user;

  assert(!user!.isAnonymous);
  assert(await user!.getIdToken() != null);

  final User? currentUser = _auth.currentUser;
  assert(currentUser!.uid == user!.uid);

  await FireDB().createNewUser(
    user!.displayName.toString(),
    user.email.toString(),
    user.photoURL.toString(),
    user.uid.toString(),
  );
  await LocalDB.saveUserID(user.uid);

  // } catch (e) {
  //   print('Error occured in sign in');
  //   print(e);
  // }
}
