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

class Header extends StatelessWidget {
  const Header({Key? key, required this.controllerMenu}) : super(key: key);
  final VoidCallback controllerMenu;

  @override
  Widget build(BuildContext context) {
    String? pageCurrente = ModalRoute.of(context)!.settings.name;
    final page = pageCurrente!.split('/').elementAt(1);
    if (kDebugMode) {
      print("page $page");
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
                  InkWell(
                    onTap: () => Navigator.pushNamed(
                        context, SolutionRoutes.presentation),
                    child: Image.asset(InfoSystem().logo(),
                        width: 100,
                        height: (Responsive.isDesktop(context)) ? 100 : 80),
                  ),
                  const SizedBox(width: p20),
                  HeaderMenu(
                      isActive: false, // "solutions" == page
                      title: "Solutions",
                      click: () async {
                        // Navigator.pushNamed(context, SolutionRoutes.presentation);
                        await showTopModalSheet<String?>(
                            context, const SolutionHeader());
                      }),
                  HeaderMenu(
                      isActive: false, // "produits" == page
                      title: "Produits",
                      click: () async {
                        await showTopModalSheet<String?>(
                            context, const ProduitHeader());
                      }),
                  HeaderMenu(
                      isActive: pageCurrente == TarifsRoutes.tarifs,
                      title: "Tarifs",
                      click: () {
                        Navigator.pushNamed(context, TarifsRoutes.tarifs);
                      }),
                  HeaderMenu(
                      isActive: false, // "ressources" == page
                      title: "Ressources",
                      click: () async {
                        await showTopModalSheet<String?>(
                            context, const RessourceHeader());
                      }),
                ],
              ),
            if (Responsive.isDesktop(context))
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, ContactRoutes.contact);
                      },
                      child: const Text("Contacter le service commercial")),
                  const SizedBox(width: p10),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, ContactRoutes.contact);
                      },
                      child: Text("Démarrer",
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
