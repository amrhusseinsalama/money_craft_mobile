import 'package:flutter/material.dart';

import '../constants/text_style.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  CustomAppBar({Key? key, required this.title,this.subTitle= const SizedBox(),this.height = kToolbarHeight, this.leading,this.actions}) : super(key: key);

  final String title;
  final Widget subTitle;
  final Widget? leading;
  final List<Widget>? actions;
  double height;
  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: leading,
        actions: actions,
        title: Column(
          children: [
            subTitle,
            Text(
              title,
              style: textStyleOnBoarding(20, Colors.black, FontWeight.w700),
            ),
          ],
        ));
  }


}
