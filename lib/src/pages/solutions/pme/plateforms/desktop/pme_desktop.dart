import 'package:flutter/material.dart';
import 'package:work_management_web/src/constants/app_theme.dart';
import 'package:work_management_web/src/pages/solutions/pme/plateforms/desktop/components/pme_section_1.dart';
import 'package:work_management_web/src/pages/solutions/pme/plateforms/desktop/components/pme_section_2.dart';
import 'package:work_management_web/src/pages/solutions/pme/plateforms/desktop/components/pme_section_3.dart';
import 'package:work_management_web/src/widgets/newsletter.dart'; 

class PMEDesktop extends StatefulWidget {
  const PMEDesktop({Key? key}) : super(key: key);

  @override
  State<PMEDesktop> createState() => _PMEDesktopState();
}

class _PMEDesktopState extends State<PMEDesktop> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        PMESection1(),
        SizedBox(height: p20),
        PMESection2(),
        SizedBox(height: p20),
        PMESection3(),
        SizedBox(height: p30),
        NewsLetter()
      ],
    );
  }
}
