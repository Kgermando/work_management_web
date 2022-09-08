import 'package:flutter/material.dart';
import 'package:work_management_web/src/constants/app_theme.dart';
import 'package:work_management_web/src/pages/solutions/presentation/plateforms/desktop/components/presentation_section_1.dart';
import 'package:work_management_web/src/pages/solutions/presentation/plateforms/desktop/components/presentation_section_2.dart';
import 'package:work_management_web/src/widgets/newsletter.dart'; 

class PageDesktop extends StatefulWidget {
  const PageDesktop({Key? key}) : super(key: key);

  @override
  State<PageDesktop> createState() => _PageDesktopState();
}

class _PageDesktopState extends State<PageDesktop> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          PresentationSection1(), 
          SizedBox(height: p30),
          PresentationSection2(),
          SizedBox(height: p30),
          NewsLetter()
        ],
      ),
    );
  }
}
