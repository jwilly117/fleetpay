import 'dart:io';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

class _Hive {
  Box? _box;
  _Hive() {
    init();
  }

  Future<void> init() async {
    Directory appDirectory = await getApplicationDocumentsDirectory();
    await Hive.initFlutter(appDirectory.path);

    _box ??= await Hive.openBox("fleet_pay");
  }

  String? getString(String key, {String? defaultValue}) {
    return getValue(key, defaultValue: defaultValue);
  }

  bool getBool(String key, {bool defaultValue = false}) {
    return getValue(key, defaultValue: defaultValue) ?? defaultValue;
  }

  getValue(String key, {dynamic defaultValue}) {
    if (_box == null) return;
    return _box!.get(key, defaultValue: defaultValue);
  }

  Future setValue(String key, dynamic value) async {
    if (_box == null) return;
    await _box!.put(key, value);
  }

  Future<void> setString(String key, String value) async =>
      await _box!.put(key, value);

  void setBool(String key, bool value) {
    setValue(key, value);
  }

  clear() async {
    await _box!.clear();
  }
}

final hive = _Hive();
