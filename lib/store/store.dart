import 'package:shared_preferences/shared_preferences.dart';

class Store {

  static Future setName(String name) async {
    SharedPreferences preferens = await SharedPreferences.getInstance();
    await preferens.setString("name", name);
  }
    static getName(String key) async {
      SharedPreferences preferens = await SharedPreferences.getInstance();
      return preferens.getString("name");
    }
  }
