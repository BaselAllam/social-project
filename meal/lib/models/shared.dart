


import 'package:shared_preferences/shared_preferences.dart';

class Shared{

  static saveLocal(String key, bool value) async {

    SharedPreferences _shared = await SharedPreferences.getInstance();
    _shared.setBool(key, value);
  }

  static Future<bool> getFromLocal(String key) async {

    SharedPreferences _shared = await SharedPreferences.getInstance();
    bool? isValid = _shared.getBool(key);
    return isValid!;
  }

  clearLocal() async {

    SharedPreferences _shared = await SharedPreferences.getInstance();
    _shared.clear();
  }
}