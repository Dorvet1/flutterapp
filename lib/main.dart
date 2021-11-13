import 'package:firstapp/app_widget.dart';
import 'package:firstapp/modules/login/login_page.dart';

import 'package:firstapp/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(const AppFireBase());
}

class AppFireBase extends StatefulWidget {
  const AppFireBase({Key? key}) : super(key: key);

  @override
  State<AppFireBase> createState() => _AppFireBaseState();
}

final Future<FirebaseApp> _init = Firebase.initializeApp();

class _AppFireBaseState extends State<AppFireBase> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _init,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            // ignore: prefer_const_constructors
            return Material(
                // ignore: prefer_const_constructors
                child: Center(
              // ignore: prefer_const_constructors
              child: Text(
                'Não foi possivel conectar ao firebase',
                textDirection: TextDirection.ltr,
              ),
            ));
          } else if (snapshot.connectionState == ConnectionState.done) {
            // ignore: prefer_const_constructors
            return AppWidget();
          } else {
            // ignore: prefer_const_constructors
            return Material(child: Center(child: CircularProgressIndicator()));
          }
        });
  }
}
