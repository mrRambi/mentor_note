import 'package:shared_preferences/shared_preferences.dart';

class LocalDataService {
  final SharedPreferences mySharedPreferences;

  LocalDataService({required this.mySharedPreferences});

  Future<bool> writeData(String key, String data) async {
    return await mySharedPreferences.setString(key, data);
  }

  String? readData(String key) {
    return mySharedPreferences.getString(key);
  }
}
