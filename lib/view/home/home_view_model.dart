import 'dart:math';
import 'package:shared_preferences/shared_preferences.dart';

class HomeViewModel {
  final String _key = 'counter';

  ///Random Value Genarator
  ///params: value Int
  ///return: int random number
  int randomValue({int value}) => Random().nextInt(value ?? 100);

  Future<void> setValueOnPreferences(int value) async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_key, value);
  }

  Future<int> getValueOnPreferences() async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getInt(_key);
  }
}
