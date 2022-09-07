import 'package:auto_size_text/auto_size_text.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:work_management_web/src/constants/app_theme.dart';

class HeaderMenu extends StatefulWidget {
  const HeaderMenu(
      {Key? key,
      required this.title,
      required this.click,
      required this.isActive})
      : super(key: key);
  final String title;
  final VoidCallback click;
  final bool isActive;

  @override
  State<HeaderMenu> createState() => _HeaderMenuState();
}

class _HeaderMenuState extends State<HeaderMenu> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    final bodyLarge = Theme.of(context).textTheme.bodyLarge;
    return Padding(
      padding: const EdgeInsets.all(p16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: widget.click,
            onHover: (bool hover) {
              setState(() {
                isHovering = hover;
              });
            },
            child: Ink(
                child: AutoSizeText(widget.title,
                    style: (widget.isActive)
                        ? bodyLarge!.copyWith(color: mainColor)
                        : bodyLarge!.copyWith(
                            color: isHovering ? mainColor : Colors.black,
                          ),
                    maxLines: 1)),
          ),
          isHovering
              ? Row(
                  children: const [
                    Icon(
                      BootstrapIcons.caret_down,
                      size: p10,
                    )
                  ],
                )
              : Container()
        ],
      ),
    );
  }
}
