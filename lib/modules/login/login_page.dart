import 'package:firstapp/modules/login/controller/login_controller.dart';
import 'package:firstapp/shared/themes/app_colors.dart';
import 'package:firstapp/shared/themes/app_images.dart';
import 'package:firstapp/shared/themes/app_text_style.dart';
import 'package:firstapp/shared/widget/social_widget/social_widget_button.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

final controller = LoginController();

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: AppColors.background,
        body: Container(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Container(
                  height: size.height * 0.36,
                  width: size.width,
                  color: AppColors.primary),
              Positioned(
                  top: 40,
                  left: 0,
                  right: 0,
                  child: Image.asset(
                    AppImages.person,
                    width: 208,
                    height: 300,
                  )),
              Positioned(
                right: 0,
                left: 0,
                bottom: size.height * 0.05,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.logomini),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 70, left: 70, top: 30),
                      child: Text(
                        'Organize seus boletos em um só lugar',
                        textAlign: TextAlign.center,
                        style: TextStyles.titleHome,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 40, right: 40, top: 40),
                      child: SocialWidgetButton(
                        onTap: () async {
                          controller.globalSigIn(context);
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
