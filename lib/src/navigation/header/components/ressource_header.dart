import 'package:flutter/material.dart';
import 'package:work_management_web/src/constants/app_theme.dart';
import 'package:work_management_web/src/constants/responsive.dart';
import 'package:work_management_web/src/routes/routes.dart';
import 'package:work_management_web/src/widgets/on_hover_header_sub_menu.dart';

class RessourceHeader extends StatefulWidget {
  const RessourceHeader({Key? key}) : super(key: key);

  @override
  State<RessourceHeader> createState() => _RessourceHeaderState();
}

class _RessourceHeaderState extends State<RessourceHeader> {
  @override
  Widget build(BuildContext context) {
    final bodyLarge = Theme.of(context).textTheme.bodyLarge;
    double width = MediaQuery.of(context).size.width;
    if (MediaQuery.of(context).size.width >= 900) {
      width = MediaQuery.of(context).size.width / 1.5;
    } else if (MediaQuery.of(context).size.width < 900 &&
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
                SelectableText("Ressources",
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
                        children: [
                          ressources1Widget(),
                          ressources2Widget(),
                          ressources3Widget()
                        ],
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

  Widget ressources1Widget() {
    String? pageCurrente = ModalRoute.of(context)!.settings.name;
    return Container(
      padding: const EdgeInsets.all(p10),
      width: Responsive.isMobile(context) ? 150 : 300,
      child: Column(
        children: [
          OnHoverHeaderSubMenu(
              isActive: pageCurrente == SolutionRoutes.presentation,
              title: "Bien demarrer",
              subTitle: "Outils pour bien demarrer",
              onPress: () {}),
          const SizedBox(height: p20),
          OnHoverHeaderSubMenu(
              isActive: pageCurrente == SolutionRoutes.presentation,
              title: "Sécurité",
              subTitle: "Protection de vos données",
              onPress: () {}),
          const SizedBox(height: p20),
          OnHoverHeaderSubMenu(
              isActive: pageCurrente == SolutionRoutes.presentation,
              title: "Mise à jour",
              subTitle: "Faire des mise à jour regulièrement",
              onPress: () {}),
          const SizedBox(height: p20),
        ],
      ),
    );
  }

  Widget ressources2Widget() {
    String? pageCurrente = ModalRoute.of(context)!.settings.name;
    return Container(
      padding: const EdgeInsets.all(p10),
      width: Responsive.isMobile(context) ? 150 : 300,
      child: Column(
        children: [
          OnHoverHeaderSubMenu(
              isActive: pageCurrente == SolutionRoutes.presentation,
              title: "Formation et Assistance",
              subTitle: "Formation à la demande ou en groupe",
              onPress: () {}),
          const SizedBox(height: p20),
          OnHoverHeaderSubMenu(
              isActive: pageCurrente == SolutionRoutes.presentation,
              title: "Partenaires",
              subTitle: "Devenir notre partenaire idéal",
              onPress: () {}),
          const SizedBox(height: p20),
          OnHoverHeaderSubMenu(
              isActive: pageCurrente == SolutionRoutes.presentation,
              title: "Evenement",
              subTitle: "Soyez au courant des activités",
              onPress: () {}),
          const SizedBox(height: p20),
        ],
      ),
    );
  }

  Widget ressources3Widget() {
    String? pageCurrente = ModalRoute.of(context)!.settings.name;
    return Container(
      padding: const EdgeInsets.all(p10),
      width: Responsive.isMobile(context) ? 150 : 300,
      child: Column(
        children: [
          OnHoverHeaderSubMenu(
              isActive: pageCurrente == SolutionRoutes.presentation,
              title: "Conseils",
              subTitle: "Besoin d'aide et accompagnement",
              onPress: () {}),
          const SizedBox(height: p20),
        ],
      ),
    );
  }
}
