import 'package:flutter/material.dart';
import 'package:work_management_web/src/constants/app_theme.dart';
import 'package:work_management_web/src/navigation/footer/components/footer_1.dart';
import 'package:work_management_web/src/navigation/footer/components/footer_2.dart';
import 'package:work_management_web/src/navigation/footer/components/footer_3.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Footer1(),
        Footer2(),
        SizedBox(height: p30),
        Footer3(),
        SizedBox(height: p20),
      ],
    );
  }
}
