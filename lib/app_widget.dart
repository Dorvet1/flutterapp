import 'package:firstapp/models/user_models.dart';
import 'package:firstapp/modules/home_page/home_page.dart';
import 'package:firstapp/modules/login/login_page.dart';
import 'package:firstapp/modules/splash/splash_page.dart';
import 'package:firstapp/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pay Flow',
      theme: ThemeData(
        primaryColor: AppColors.primary,
      ),
      routes: {
        '/splash': (context) => const SplashPage(),
        '/login': (context) => const LoginPage(),
        '/home': (context) => PageHome(
              user: ModalRoute.of(context)!.settings.arguments as UserModels,
            )
      },
      initialRoute: '/splash',
    );
  }
}
