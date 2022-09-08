import 'package:flutter/material.dart';
import 'package:work_management_web/src/constants/app_theme.dart';
import 'package:work_management_web/src/navigation/drawer/drawer.dart';
import 'package:work_management_web/src/navigation/footer/footer.dart';
import 'package:work_management_web/src/navigation/header/header_.dart';
import 'package:work_management_web/src/pages/solutions/presentation/plateforms/desktop/page_desktop.dart';

class PresentationSolution extends StatefulWidget {
  const PresentationSolution({Key? key}) : super(key: key);

  @override
  State<PresentationSolution> createState() => _PresentationSolutionState();
}

class _PresentationSolutionState extends State<PresentationSolution> {
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
              child: SizedBox(
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          LayoutBuilder(builder: (context, constraints) {
                            if (constraints.maxWidth >= 900) {
                              return const PageDesktop();
                            } else if (constraints.maxWidth < 900 &&
                                constraints.maxWidth >= 650) {
                              return Container();
                            } else {
                              return Container();
                            }
                          }),
                          const SizedBox(height: p20),
                          const Footer(),
                        ],
                      ),
                    ),
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
