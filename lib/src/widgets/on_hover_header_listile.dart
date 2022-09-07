import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:work_management_web/src/constants/app_theme.dart';
import 'package:work_management_web/src/constants/responsive.dart';
import 'package:work_management_web/src/widgets/on_hover_text.dart';

class OnHoverHeaderListile extends StatelessWidget {
  const OnHoverHeaderListile(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.onPress,
      this.icon,
      this.color,
      required this.isActive})
      : super(key: key);
  final String title;
  final String subTitle;
  final VoidCallback onPress;
  final IconData? icon;
  final Color? color;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    final bodySmall = Theme.of(context).textTheme.bodySmall;
    return OnHoverText(builder: (isHovered) {
      return ListTile(
        contentPadding: EdgeInsets.zero,
        onTap: onPress,
        leading: Icon(icon, color: color),
        title: isActive
            ? Text(title,
                textAlign: TextAlign.start,
                style: bodySmall!
                    .copyWith(color: mainColor, fontWeight: FontWeight.bold))
            : Text(title,
                textAlign: TextAlign.start,
                style: bodySmall!.copyWith(
                    color: isHovered ? mainColor : Colors.black,
                    fontWeight: FontWeight.bold)),
        subtitle: (Responsive.isMobile(context))
            ? Container()
            : AutoSizeText(subTitle,
                maxLines: 3,
                textAlign: TextAlign.start,
                style: bodySmall.copyWith(color: Colors.black54)),
      );
    });
  }
}
