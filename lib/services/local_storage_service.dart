import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:love_chat/core/constants.dart';
import 'package:love_chat/models/user.dart';

class UserLocalStorageService {
  final _sharedPreferences = SharedPreferences.getInstance();

  Future<void> saveUsers(List<User> user) async {
    final prefs = await _sharedPreferences;
    final jsonUserList =
        user.map((user) => json.encode(user.toJson())).toList();
    await prefs.setStringList(AppConstants.userListKey, jsonUserList);
  }

  Future<List<User>> getUsers() async {
    final prefs = await _sharedPreferences;
    final jsonUserList = prefs.getStringList(AppConstants.userListKey);

    if (jsonUserList == null || jsonUserList.isEmpty) {
      return [];
    } else {
      return jsonUserList
          .map((user) => User.fromJson(json.decode(user)))
          .toList();
    }
  }

  Future<void> loadInitialUser() async {
    final jsonUserData =
        await rootBundle.loadString('assets/data/user_data.json');
    final decodedJsonUserData = json.decode(jsonUserData) as List<dynamic>;
    final initialUser =
        decodedJsonUserData.map((user) => User.fromJson(user)).toList();
    await saveUsers(initialUser);
  }
}
