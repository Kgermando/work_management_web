import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:work_management_web/src/constants/app_theme.dart';
import 'package:work_management_web/src/constants/responsive.dart';
import 'package:work_management_web/src/navigation/header/components/header_menu.dart';
import 'package:work_management_web/src/navigation/header/components/produits_header.dart';
import 'package:work_management_web/src/navigation/header/components/ressource_header.dart';
import 'package:work_management_web/src/navigation/header/components/solutions_header.dart';
import 'package:work_management_web/src/routes/routes.dart';
import 'package:work_management_web/src/utils/info_system.dart';
import 'package:top_modal_sheet/top_modal_sheet.dart';

class HeaderDialog extends StatelessWidget {
  const HeaderDialog({Key? key, required this.controllerMenu})
      : super(key: key);
  final VoidCallback controllerMenu;

  @override
  Widget build(BuildContext context) {
    String? pageCurrente = ModalRoute.of(context)!.settings.name;
    if (kDebugMode) {
      print("page $pageCurrente");
    }

    return Card(
      elevation: 2,
      child: Container(
        color: Colors.white,
        width: double.infinity,
        padding: const EdgeInsets.only(left: p10, right: p10),
        height: 80,
        child: Row(
          mainAxisAlignment: (Responsive.isDesktop(context))
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.start,
          children: [
            if (Responsive.isMobile(context))
              Row(
                children: [
                  Image.asset(InfoSystem().logo(),
                      width: 100,
                      height: (Responsive.isDesktop(context)) ? 100 : 80),
                ],
              ),
            if (!Responsive.isMobile(context))
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(InfoSystem().logo(),
                      width: 100,
                      height: (Responsive.isDesktop(context)) ? 100 : 80),
                  const SizedBox(width: p20),
                  HeaderMenu(
                      isActive: pageCurrente == SolutionRoutes.presentation,
                      title: "Solutions",
                      click: () async {
                        Navigator.of(context).pop();
                        await showTopModalSheet<String?>(
                            context, const SolutionHeader());
                      }),
                  HeaderMenu(
                      isActive: pageCurrente == SolutionRoutes.presentation,
                      title: "Produits",
                      click: () async {
                        Navigator.of(context).pop();
                        await showTopModalSheet<String?>(
                            context, const ProduitHeader());
                      }),
                  HeaderMenu(
                      isActive: pageCurrente == SolutionRoutes.presentation,
                      title: "Tarifs",
                      click: () {
                        Navigator.pushNamed(
                            context, SolutionRoutes.presentation);
                      }),
                  HeaderMenu(
                      isActive: pageCurrente == SolutionRoutes.presentation,
                      title: "Ressources",
                      click: () async {
                        Navigator.of(context).pop();
                        await showTopModalSheet<String?>(
                            context, const RessourceHeader());
                      }),
                ],
              ),
            if (Responsive.isDesktop(context))
              Row(
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text("Contacter le service commercial")),
                  const SizedBox(width: p10),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, SolutionRoutes.presentation);
                      },
                      child: Text("Commencer",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Colors.white)))
                ],
              ),
            if (!Responsive.isDesktop(context)) const Spacer(),
            if (!Responsive.isDesktop(context))
              IconButton(
                onPressed: controllerMenu,
                icon: const Icon(
                  Icons.menu,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
