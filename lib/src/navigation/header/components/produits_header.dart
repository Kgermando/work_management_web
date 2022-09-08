import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:work_management_web/src/constants/app_theme.dart';
import 'package:work_management_web/src/constants/responsive.dart';
import 'package:work_management_web/src/routes/routes.dart';
import 'package:work_management_web/src/widgets/on_hover_header_listile.dart';

class ProduitHeader extends StatefulWidget {
  const ProduitHeader({Key? key}) : super(key: key);

  @override
  State<ProduitHeader> createState() => _ProduitHeaderState();
}

class _ProduitHeaderState extends State<ProduitHeader> {
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
                SelectableText("Produits",
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
                        // alignment: WrapAlignment.spaceBetween,
                        children: [
                          produit1Widget(),
                          produit2Widget(),
                          produit3Widget()
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

  Widget produit1Widget() {
    String? pageCurrente = ModalRoute.of(context)!.settings.name;
    return SizedBox(
      // padding: const EdgeInsets.all(p10),
      width: Responsive.isMobile(context) ? 150 : 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OnHoverHeaderListile(
              isActive: pageCurrente == ProduitRoutes.administratonProduit,
              icon: BootstrapIcons.bar_chart_fill,
              color: Colors.red,
              title: "Administration",
              subTitle: "Suivis, Approbations et stats global",
              onPress: () {}),
          OnHoverHeaderListile(
              isActive: pageCurrente == ProduitRoutes.budgets,
              icon: BootstrapIcons.graph_up_arrow,
              color: Colors.pink,
              title: "Budgets",
              subTitle: "Contrôle budgetaire",
              onPress: () {}),
          OnHoverHeaderListile(
              isActive: pageCurrente == ProduitRoutes.finances,
              icon: BootstrapIcons.bank2,
              color: Colors.green,
              title: "Finance",
              subTitle: "Transactions financière entrer-sorties",
              onPress: () {}),
          OnHoverHeaderListile(
              isActive: pageCurrente == ProduitRoutes.comptabilite,
              icon: BootstrapIcons.calculator_fill,
              color: Colors.purple,
              title: "Comptabilité",
              subTitle: "Ecritures comptable",
              onPress: () {}),
        ],
      ),
    );
  }

  Widget produit2Widget() {
    String? pageCurrente = ModalRoute.of(context)!.settings.name;
    return SizedBox(
      // padding: const EdgeInsets.all(p10),
      width: Responsive.isMobile(context) ? 150 : 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OnHoverHeaderListile(
              isActive: pageCurrente == ProduitRoutes.ressourceHumaines,
              icon: BootstrapIcons.people_fill,
              color: Colors.blue,
              title: "Ressources humaines",
              subTitle: "Gestion du personnels, de salaires et presences",
              onPress: () {}),
          OnHoverHeaderListile(
              isActive: pageCurrente == ProduitRoutes.exploitations,
              icon: BootstrapIcons.wallet_fill,
              color: Colors.teal,
              title: "Exploitation",
              subTitle: "Projets et productions",
              onPress: () {}),
          OnHoverHeaderListile(
              isActive: pageCurrente == ProduitRoutes.logistique,
              icon: BootstrapIcons.gear_fill,
              color: Colors.grey,
              title: "Logistique",
              subTitle: "Gestion de la logistique",
              onPress: () {}),
          OnHoverHeaderListile(
              isActive: pageCurrente == ProduitRoutes.commercialeMarketing,
              icon: BootstrapIcons.cart_fill,
              color: Colors.orange,
              title: "Commercial et Marketing",
              subTitle: "Gestion du business et des campagnes",
              onPress: () {}),
        ],
      ),
    );
  }

  Widget produit3Widget() {
    String? pageCurrente = ModalRoute.of(context)!.settings.name;
    return SizedBox(
      // padding: const EdgeInsets.all(p10),
      width: Responsive.isMobile(context) ? 150 : 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OnHoverHeaderListile(
              isActive: pageCurrente == ProduitRoutes.mailling,
              icon: BootstrapIcons.envelope_fill,
              color: Colors.amber,
              title: "Mailling",
              subTitle: "Adresse e-mail professionnelle personnalisée",
              onPress: () {}),
          OnHoverHeaderListile(
              isActive: pageCurrente == ProduitRoutes.archives,
              icon: BootstrapIcons.archive_fill,
              color: Colors.brown,
              title: "Archive",
              subTitle: "Gestion des archives",
              onPress: () {}),
          OnHoverHeaderListile(
              isActive: pageCurrente == ProduitRoutes.actionnaires,
              icon: BootstrapIcons.percent,
              color: Colors.blueGrey,
              title: "Actionnaires",
              subTitle: "Dividantes et côtisations",
              onPress: () {}),
        ],
      ),
    );
  }
}
