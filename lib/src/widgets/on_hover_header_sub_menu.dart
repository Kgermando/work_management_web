import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:work_management_web/src/constants/app_theme.dart';
import 'package:work_management_web/src/constants/responsive.dart';
import 'package:work_management_web/src/widgets/on_hover_text.dart';

class OnHoverHeaderSubMenu extends StatelessWidget {
  const OnHoverHeaderSubMenu(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.onPress,
      required this.isActive})
      : super(key: key);
  final String title;
  final String subTitle;
  final VoidCallback onPress;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    final bodySmall = Theme.of(context).textTheme.bodySmall;
    return OnHoverText(builder: (isHovered) {
      return InkWell(
          onTap: onPress,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              isActive
                  ? Text(title,
                      textAlign: TextAlign.start,
                      style: bodySmall!.copyWith(color: mainColor))
                  : Text(title,
                      textAlign: TextAlign.start,
                      style: bodySmall!.copyWith(
                          color: isHovered ? mainColor : Colors.black)),
              if (!Responsive.isMobile(context))
                Row(
                  children: [
                    Expanded(
                      child: AutoSizeText(subTitle,
                          maxLines: 3,
                          textAlign: TextAlign.start,
                          style: bodySmall.copyWith(color: Colors.black54)),
                    ),
                  ],
                ),
            ],
          ));
    });
  }
}
