import 'package:flutter/material.dart';
import 'package:work_management_web/src/constants/app_theme.dart';
import 'package:work_management_web/src/navigation/drawer/drawer.dart';
import 'package:work_management_web/src/navigation/footer/footer.dart';
import 'package:work_management_web/src/navigation/header/header_.dart';

class PresentationGE extends StatefulWidget {
  const PresentationGE({Key? key}) : super(key: key);

  @override
  State<PresentationGE> createState() => _PresentationGEState();
}

class _PresentationGEState extends State<PresentationGE> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (MediaQuery.of(context).size.width >= 900) {
      width = MediaQuery.of(context).size.width / 1.5;
    } else if (MediaQuery.of(context).size.width < 900 &&
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
                child: SizedBox(
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          children: const [
                            SizedBox(height: p50),
                            Footer(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
