import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:work_management_web/src/constants/responsive.dart';
import 'package:work_management_web/src/utils/info_system.dart';

class Footer2 extends StatelessWidget {
  const Footer2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          InfoSystem().logo(),
          height: Responsive.isMobile(context) ? 30 : 50,
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(BootstrapIcons.facebook),
              iconSize: Responsive.isMobile(context) ? 20 : 30,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(BootstrapIcons.twitter),
              iconSize: Responsive.isMobile(context) ? 20 : 30,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(BootstrapIcons.linkedin),
              iconSize: Responsive.isMobile(context) ? 20 : 30,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(BootstrapIcons.instagram),
              iconSize: Responsive.isMobile(context) ? 20 : 30,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(BootstrapIcons.youtube),
              iconSize: Responsive.isMobile(context) ? 20 : 30,
            ),
          ],
        )
      ],
    );
  }
}
