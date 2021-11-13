import 'package:firstapp/shared/themes/app_colors.dart';
import 'package:firstapp/shared/themes/app_images.dart';
import 'package:firstapp/shared/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class SocialWidgetButton extends StatelessWidget {
  final VoidCallback onTap;
  const SocialWidgetButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
              color: AppColors.shape,
              borderRadius: BorderRadius.circular(5),
              border:
                  Border.fromBorderSide(BorderSide(color: AppColors.stroke))),
          height: 56,
          child: Row(
            children: [
              Expanded(flex: 1, child: Image.asset(AppImages.google)),
              const VerticalDivider(
                thickness: 1,
                width: 10,
              ),
              Expanded(
                flex: 4,
                child: Text(
                  'Entrar com Google',
                  style: TextStyles.buttonBoldGray,
                ),
              ),
              Expanded(child: Container())
            ],
          )),
    );
  }
}
