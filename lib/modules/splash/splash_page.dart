import 'package:firstapp/shared/themes/app_colors.dart';
import 'package:firstapp/shared/themes/app_images.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 300))
        .then((_) => {Navigator.pushNamed(context, '/login')});
    return Scaffold(
        backgroundColor: AppColors.background,
        body: Stack(
          children: [Center(child: Image.asset(AppImages.logoFull))],
        ));
  }
}
