import 'package:flutter/material.dart';
import 'package:work_management_web/src/constants/app_theme.dart';
import 'package:work_management_web/src/pages/solutions/pme/plateforms/desktop/components/new_entreprise_section_1.dart';
import 'package:work_management_web/src/pages/solutions/pme/plateforms/desktop/components/new_entreprise_section_2.dart';
import 'package:work_management_web/src/pages/solutions/pme/plateforms/desktop/components/new_entreprise_section_3.dart';
import 'package:work_management_web/src/widgets/newsletter.dart'; 

class StartUpDesktop extends StatefulWidget {
  const StartUpDesktop({Key? key}) : super(key: key);

  @override
  State<StartUpDesktop> createState() => _StartUpDesktopState();
}

class _StartUpDesktopState extends State<StartUpDesktop> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SizedBox(height: p20),
        NewEntrepriseSection1(),
        SizedBox(height: p20),
        NewEntrepriseSection2(),
        SizedBox(height: p20),
        NewEntrepriseSection3(),
        SizedBox(height: p30),
        NewsLetter()
      ],
    );
  }
}