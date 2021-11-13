import 'package:firstapp/models/user_models.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController {
  var loginBool = false;
  UserModels? _user;
  UserModels get user => _user!;
  void setLoginBool(UserModels? user, BuildContext context) {
    if (user != null) {
      _user = user;
      loginBool = true;
      Navigator.pushReplacementNamed(context, '/home',arguments: user);
    } else {
      loginBool = false;
      Navigator.pushReplacementNamed(context, '/login', );
    }
  }

  Future<void> savePreferencs(UserModels user) async {
    final instance = await SharedPreferences.getInstance();
    await instance.setString('user', user.toJson());
    return;
  }

  Future<void> currentPreferences(BuildContext context) async {
    final instance = await SharedPreferences.getInstance();
    final user = instance.get('user') as String;
    setLoginBool(UserModels.fromJson(user), context);
    return;
  }
}
