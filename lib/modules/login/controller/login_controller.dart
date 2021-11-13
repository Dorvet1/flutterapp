import 'package:firstapp/models/user_models.dart';
import 'package:firstapp/shared/auth/auth_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController {
  final authController = AuthController();
  Future<void> globalSigIn(BuildContext context) async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );
    try {
      final response = await _googleSignIn.signIn();
      final user =
          UserModels(name: response!.displayName!, photoUrl: response.photoUrl);
      authController.setLoginBool(user, context);
      // ignore: avoid_print
      print(response);
    } catch (error) {
      // ignore: avoid_print
      print(error);
    }
  }
}
