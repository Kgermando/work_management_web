import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:work_management_web/src/constants/app_theme.dart';
import 'package:work_management_web/src/navigation/drawer/components/drawer_widget.dart';
import 'package:work_management_web/src/navigation/header/components/produits_header.dart';
import 'package:work_management_web/src/navigation/header/components/ressource_header.dart';
import 'package:work_management_web/src/navigation/header/components/solutions_header.dart'; 
import 'package:work_management_web/src/routes/routes.dart'; 
import 'package:top_modal_sheet/top_modal_sheet.dart'; 

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bodyLarge = Theme.of(context).textTheme.bodyLarge;
    // final themeProvider = Provider.of<ThemeProvider>(context);
    String? pageCurrente = ModalRoute.of(context)!.settings.name;
    final page = pageCurrente!.split('/').elementAt(1);
    return Drawer(
      // backgroundColor:
      //     themeProvider.isLightMode ? Colors.amber[100] : Colors.black26,
      elevation: 10.0,
      child: Scrollbar(
        child: ListView(
          children: [
            const SizedBox(height: p50),
            // DrawerHeader(
            //     child: Image.asset(
            //   InfoSystem().logo(),
            //   width: 100,
            //   height: 100,
            // )),
            DrawerWidget(
                selected: false, // "solutions" == page,
                icon: BootstrapIcons.bookmarks,
                sizeIcon: 20.0,
                title: 'Solutions',
                style: bodyLarge!,
                onTap: () async {
                  await showTopModalSheet<String?>(
                      context, const SolutionHeader());
                }),
            DrawerWidget(
                selected: false, //  "produits" == page,
                icon: BootstrapIcons.box_seam,
                sizeIcon: 20.0,
                title: 'Produits',
                style: bodyLarge,
                onTap: () async {
                  await showTopModalSheet<String?>(
                      context, const ProduitHeader());
                }),
            DrawerWidget(
                selected: false, //  pageCurrente == TarifsRoutes.tarifs,
                icon: BootstrapIcons.tag,
                sizeIcon: 20.0,
                title: 'Tarifs',
                style: bodyLarge,
                onTap: () {
                  Navigator.pushNamed(context, TarifsRoutes.tarifs);
                }),
            DrawerWidget(
                selected: false, //  "ressources" == page,
                icon: BootstrapIcons.box_arrow_in_down_right,
                sizeIcon: 20.0,
                title: 'Ressources',
                style: bodyLarge,
                onTap: () async {
                  await showTopModalSheet<String?>(
                      context, const RessourceHeader());
                }),
            DrawerWidget(
                selected: false, //  pageCurrente == ContactRoutes.contact,
                icon: BootstrapIcons.person_rolodex,
                sizeIcon: 20.0,
                title: 'Contact',
                style: bodyLarge,
                onTap: () {
                  Navigator.pushNamed(context, ContactRoutes.contact);
                }),
            DrawerWidget(
                selected: false, //  pageCurrente == ContactRoutes.contact,
                icon: BootstrapIcons.box_arrow_in_right,
                sizeIcon: 20.0,
                title: 'Obtenir',
                style: bodyLarge,
                onTap: () {
                  Navigator.pushNamed(context, ContactRoutes.contact);
                }),
          ],
        ),
      ),
    );
  }
}
