import 'package:firstapp/models/user_models.dart';
import 'package:firstapp/shared/themes/app_colors.dart';
import 'package:firstapp/shared/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class PageHome extends StatefulWidget {
  final UserModels user;
  const PageHome({required this.user, Key? key}) : super(key: key);

  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    final routes = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(152),
        child: Container(
          height: 152,
          // ignore: prefer_const_constructors
          child: Center(
            child: ListTile(
              trailing: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(widget.user.photoUrl!)),
                    borderRadius: BorderRadius.circular(10)),
              ),
              // ignore: prefer_const_constructors
              title: Text.rich(TextSpan(
                  text: 'Olá,',
                  style: TextStyles.titleRegular,
                  children: [
                    TextSpan(
                        text: '${widget.user.name}',
                        style: TextStyles.titleBoldBackground)
                  ])),

              // ignore: prefer_const_constructors
              subtitle: Text(
                'Mantenha suas contas em dias',
                style: TextStyles.captionShape,
              ),
            ),
          ),
          color: AppColors.primary,
        ),
      ),
      bottomNavigationBar: Container(
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  color: AppColors.primary,
                )),
            Container(
                decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(5)),
                height: 56,
                width: 56,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_box_outlined,
                      color: AppColors.background,
                    ))),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.description_outlined,
                  color: AppColors.body,
                ))
          ],
        ),
      ),
    );
  }
}
