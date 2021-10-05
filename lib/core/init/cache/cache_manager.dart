import 'package:shared_preferences/shared_preferences.dart';

class CacheManager {
  static final CacheManager _instance = CacheManager._init();

  SharedPreferences? _preferences;
  static CacheManager get instance => _instance;

  CacheManager._init() {
    SharedPreferences.getInstance().then((value) {
      _preferences = value;
    });
  }

  static void prefrencesInit() async {
    instance._preferences ??= await SharedPreferences.getInstance();
  }

  Future<bool> setString({required String key, required String value}) {
    return _preferences!.setString(key, value);
  }

  String? getString(String key) {
    return _preferences!.getString(key);
  }
}
