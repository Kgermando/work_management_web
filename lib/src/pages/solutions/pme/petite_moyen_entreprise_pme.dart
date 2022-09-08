import 'package:flutter/material.dart';
import 'package:work_management_web/src/constants/app_theme.dart';
import 'package:work_management_web/src/navigation/drawer/drawer.dart';
import 'package:work_management_web/src/navigation/footer/footer.dart';
import 'package:work_management_web/src/navigation/header/header_.dart';
import 'package:work_management_web/src/pages/solutions/pme/plateforms/desktop/components/section_1.dart';
import 'package:work_management_web/src/pages/solutions/pme/plateforms/desktop/components/section_2.dart';
import 'package:work_management_web/src/pages/solutions/pme/plateforms/desktop/components/section_3.dart';
import 'package:work_management_web/src/pages/solutions/pme/plateforms/desktop/pme_desktop.dart';
import 'package:work_management_web/src/widgets/newsletter.dart';

class PetiteMoyenEntreprisePME extends StatefulWidget {
  const PetiteMoyenEntreprisePME({Key? key}) : super(key: key);

  @override
  State<PetiteMoyenEntreprisePME> createState() =>
      _PetiteMoyenEntreprisePMEState();
}

class _PetiteMoyenEntreprisePMEState extends State<PetiteMoyenEntreprisePME> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (MediaQuery.of(context).size.width >= 1100) {
      width = MediaQuery.of(context).size.width / 1.5;
    } else if (MediaQuery.of(context).size.width < 1100 &&
        MediaQuery.of(context).size.width >= 650) {
      width = MediaQuery.of(context).size.width / 1.3;
    } else if (MediaQuery.of(context).size.width < 650) {
      width = MediaQuery.of(context).size.width / 1.2;
    }
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        drawer: const DrawerMenu(),
        body: Column(
          children: [
            Header(
                controllerMenu: () => scaffoldKey.currentState!.openDrawer()),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(p20),
                child: Column(
                  children: const [
                    SizedBox(height: p20),
                    PMESection1(),
                    SizedBox(height: p20),
                    PMESection2(),
                    SizedBox(height: p20),
                    PMESection3(),
                    SizedBox(height: p30),
                    NewsLetter(),
                    SizedBox(height: p50),
                    Footer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
