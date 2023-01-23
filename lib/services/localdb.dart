import 'package:shared_preferences/shared_preferences.dart';

class LocalDB {
  static final uidKey = "dfkjkejkfe";

  static Future<bool> saveUserID(String uid) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(uidKey, uid);
  }

  static Future<String?> getUserId() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.getString(uidKey);
  }
}
