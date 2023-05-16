import 'package:clean_arch_project/core/errors/exception.dart';
import 'package:hive/hive.dart';

class HiveStorage {
  static const String userBoxName = 'cat_app_storage_user';
  static const String sharedBoxName = 'cat_app_shared_storage';
  static const String flagsBoxName = 'cat_app_flag_storage';
  final HiveInterface hive;
  Box? _userBox;
  Box? _sharedBox;
  Map<String, dynamic>? _userStorage;
  Map<String, dynamic>? _sharedStorage;

  HiveStorage({required this.hive});

  bool get isLoaded => _userStorage != null && _userBox != null && _sharedStorage != null && _sharedBox != null;

  Future<void> initAppStorage() async {
    _userBox = hive.isBoxOpen(userBoxName) ? hive.box(userBoxName) : await hive.openBox(userBoxName);
    _sharedBox = hive.isBoxOpen(sharedBoxName) ? hive.box(sharedBoxName) : await hive.openBox(sharedBoxName);
    _userStorage = Map<String, dynamic>.from(_userBox!.toMap());
    _sharedStorage = Map<String, dynamic>.from(_sharedBox!.toMap());
  }

  dynamic get(String key, {bool shared = false, bool refresh = false}) {
    if (shared) {
      return _sharedStorage?[key] ?? _sharedBox?.get(key);
    } else {
      return _userStorage?[key] ?? _userBox?.get(key);
    }
  }

  Future<void> insert(String key, dynamic value, {bool shared = false}) async {
    _ensureLoaded();
    if (shared) {
      _sharedStorage!.addAll({key: value});
      return _sharedBox!.put(key, value);
    } else {
      _userStorage!.addAll({key: value});
      return _userBox!.put(key, value);
    }
  }

  Future<bool> readFlag(String flagName) async {
    final box = await hive.openBox(flagsBoxName);
    final result = await box.get(flagName, defaultValue: false);
    await box.delete(flagName);
    await box.close();
    return result;
  }

  Future<void> setFlag(String flagName, bool value) async {
    final box = await hive.openBox(flagsBoxName);
    await box.put(flagName, value);
    await box.close();
  }

  bool isStored(String key, {bool shared = false}) => shared
      ? _sharedStorage != null && _sharedStorage!.containsKey(key)
      : _userStorage != null && _sharedStorage!.containsKey(key);

  void clear(String key, {bool shared = false}) {
    _ensureLoaded();
    if (shared) {
      _sharedStorage!.remove(key);
      _sharedBox!.delete(key);
    } else {
      _userStorage!.remove(key);
      _userBox!.delete(key);
    }
  }

  void clearUserInfo() {
    _ensureLoaded();
    _userStorage = {};
    _userBox!.clear();
  }

  void _ensureLoaded() {
    if (!isLoaded) {
      throw StorageNotInitializedException();
    }
  }
}
