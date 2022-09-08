import 'package:flutter/material.dart';
import 'package:work_management_web/src/constants/app_theme.dart';
import 'package:work_management_web/src/constants/responsive.dart';
import 'package:work_management_web/src/routes/routes.dart';
import 'package:work_management_web/src/utils/info_system.dart';
import 'package:work_management_web/src/widgets/on_hover_header_sub_menu.dart';

class SolutionHeader extends StatefulWidget {
  const SolutionHeader({Key? key}) : super(key: key);

  @override
  State<SolutionHeader> createState() => _SolutionHeaderState();
}

class _SolutionHeaderState extends State<SolutionHeader> {
  @override
  Widget build(BuildContext context) {
    final bodyLarge = Theme.of(context).textTheme.bodyLarge;
    double width = MediaQuery.of(context).size.width;
    if (MediaQuery.of(context).size.width >= 1100) {
      width = MediaQuery.of(context).size.width / 1.5;
    } else if (MediaQuery.of(context).size.width < 1100 &&
        MediaQuery.of(context).size.width >= 650) {
      width = MediaQuery.of(context).size.width / 1.3;
    } else if (MediaQuery.of(context).size.width < 650) {
      width = MediaQuery.of(context).size.width;
    }
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          // HeaderDialog(controllerMenu: () {}),
          const SizedBox(height: p20),
          SizedBox(
            width: width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SelectableText("Solutions",
                    textAlign: TextAlign.start, style: bodyLarge),
                IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(Icons.close))
              ],
            ),
          ),
          const SizedBox(height: p20),
          SizedBox(
            width: width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      const Divider(color: Colors.black54),
                      Wrap(
                        alignment: WrapAlignment.spaceBetween,
                        children: [pmeWidget(), geWidget(), ongAsblWidget()],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: p50),
        ],
      ),
    );
  }

  Widget pmeWidget() {
    String? pageCurrente = ModalRoute.of(context)!.settings.name;
    final bodyMedium = Theme.of(context).textTheme.bodyMedium;
    return Container(
      padding: const EdgeInsets.all(p10),
      width: Responsive.isMobile(context) ? 150 : 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("PETITES ET MOYENNES ENTREPRISES",
              textAlign: TextAlign.start,
              style: bodyMedium!.copyWith(fontWeight: FontWeight.bold)),
          const SizedBox(height: p20),
          OnHoverHeaderSubMenu(
              isActive: pageCurrente == SolutionRoutes.presentation,
              title: "Présentation",
              subTitle: "${InfoSystem().name()} fonctionnalités",
              onPress: () {
                Navigator.pushNamed(context, SolutionRoutes.presentation);
              }),
          const SizedBox(height: p20),
          OnHoverHeaderSubMenu(
              isActive: pageCurrente == SolutionRoutes.pme,
              title: "PME",
              subTitle: "Outils de productivité pour les PME",
              onPress: () {
                Navigator.pushNamed(context, SolutionRoutes.pme);
              }),
          const SizedBox(height: p20),
          OnHoverHeaderSubMenu(
              isActive: pageCurrente == SolutionRoutes.newEntreprise,
              title: "Nouvelle entreprise",
              subTitle: "Outils pour les nouvelles entreprises",
              onPress: () {
                Navigator.pushNamed(context, SolutionRoutes.newEntreprise);
              }),
          const SizedBox(height: p20),
          OnHoverHeaderSubMenu(
              isActive: pageCurrente == SolutionRoutes.startUp,
              title: "Start-up",
              subTitle: "Outils de productivité pour les start-up",
              onPress: () {
                Navigator.pushNamed(context, SolutionRoutes.startUp);
              }),
        ],
      ),
    );
  }

  Widget geWidget() {
    String? pageCurrente = ModalRoute.of(context)!.settings.name;
    final bodyMedium = Theme.of(context).textTheme.bodyMedium;
    return Container(
      padding: const EdgeInsets.all(p10),
      width: Responsive.isMobile(context) ? 150 : 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("GRANDES ENTREPRISES",
              textAlign: TextAlign.start,
              style: bodyMedium!.copyWith(fontWeight: FontWeight.bold)),
          const SizedBox(height: p20),
          OnHoverHeaderSubMenu(
              isActive: pageCurrente == SolutionRoutes.presentation,
              title: "Présentation",
              subTitle: "${InfoSystem().name()} fonctionnalités",
              onPress: () {
                Navigator.pushNamed(context, SolutionRoutes.presentation);
              }),
          const SizedBox(height: p20),
          OnHoverHeaderSubMenu(
              isActive: pageCurrente == SolutionRoutes.commerce,
              title: "Commerce",
              subTitle: "${InfoSystem().name()} pour le secteur du commerce",
              onPress: () {
                Navigator.pushNamed(context, SolutionRoutes.commerce);
              }),
          const SizedBox(height: p20),
          OnHoverHeaderSubMenu(
              isActive: pageCurrente == SolutionRoutes.industrie,
              title: "Industrie",
              subTitle: "${InfoSystem().name()} pour le secteur de l'industrie",
              onPress: () {
                Navigator.pushNamed(context, SolutionRoutes.industrie);
              }),
          const SizedBox(height: p20),
          OnHoverHeaderSubMenu(
              isActive:
                  pageCurrente == SolutionRoutes.administrationSecteurPublic,
              title: "Administration et secteur public",
              subTitle: "${InfoSystem().name()} pour le Governement",
              onPress: () {
                Navigator.pushNamed(
                    context, SolutionRoutes.administrationSecteurPublic);
              }),
          const SizedBox(height: p20),
          OnHoverHeaderSubMenu(
              isActive: pageCurrente == SolutionRoutes.services,
              title: "Services",
              subTitle:
                  "${InfoSystem().name()} Des solutions pour chaque service",
              onPress: () {
                Navigator.pushNamed(context, SolutionRoutes.services);
              }),
          const SizedBox(height: p20),
        ],
      ),
    );
  }

  Widget ongAsblWidget() {
    String? pageCurrente = ModalRoute.of(context)!.settings.name;
    final bodyMedium = Theme.of(context).textTheme.bodyMedium;
    return Container(
      padding: const EdgeInsets.all(p10),
      width: Responsive.isMobile(context) ? 150 : 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("ONG ET ASSOCIATIONS",
              textAlign: TextAlign.start,
              style: bodyMedium!.copyWith(fontWeight: FontWeight.bold)),
          const SizedBox(height: p20),
          OnHoverHeaderSubMenu(
              isActive: pageCurrente == SolutionRoutes.presentation,
              title: "Présentation",
              subTitle: "${InfoSystem().name()} fonctionnalités",
              onPress: () {
                Navigator.pushNamed(context, SolutionRoutes.presentation);
              }),
          const SizedBox(height: p20),
          OnHoverHeaderSubMenu(
              isActive: pageCurrente == SolutionRoutes.ongAssociation,
              title: "ONG",
              subTitle: "${InfoSystem().name()} pour les organisations",
              onPress: () {
                Navigator.pushNamed(context, SolutionRoutes.ongAssociation);
              }),
          const SizedBox(height: p20),
          OnHoverHeaderSubMenu(
              isActive: pageCurrente == SolutionRoutes.ongAssociation,
              title: "Associations",
              subTitle: "${InfoSystem().name()} pour les associations",
              onPress: () {
                Navigator.pushNamed(context, SolutionRoutes.ongAssociation);
              }),
          const SizedBox(height: p20),
        ],
      ),
    );
  }
}
