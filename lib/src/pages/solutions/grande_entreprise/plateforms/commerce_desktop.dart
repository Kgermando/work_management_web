import 'package:flutter/material.dart';
import 'package:work_management_web/src/constants/app_theme.dart';
import 'package:work_management_web/src/pages/solutions/grande_entreprise/plateforms/components/commerce_section_1.dart';
import 'package:work_management_web/src/widgets/newsletter.dart'; 

class CommercerDesktop extends StatefulWidget {
  const CommercerDesktop({Key? key}) : super(key: key);

  @override
  State<CommercerDesktop> createState() => _CommercerDesktopState();
}

class _CommercerDesktopState extends State<CommercerDesktop> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CommerceSection1(),
        SizedBox(height: p30), 
        NewsLetter()],
    );
  }
}
