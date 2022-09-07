import 'package:flutter/material.dart';
import 'package:work_management_web/src/constants/app_theme.dart';
import 'package:work_management_web/src/constants/responsive.dart';
import 'package:work_management_web/src/routes/routes.dart';
import 'package:work_management_web/src/widgets/on_hover_text.dart';

class Footer1 extends StatefulWidget {
  const Footer1({Key? key}) : super(key: key);

  @override
  State<Footer1> createState() => _Footer1State();
}

class _Footer1State extends State<Footer1> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.spaceBetween,
      children: [
        applicationInclusWidget(),
        solutionWidget(),
        ressourceWidget(),
        formationWidget()
      ],
    );
  }

  Widget applicationInclusWidget() {
    final bodyMedium = Theme.of(context).textTheme.bodyMedium;
    final bodySmall = Theme.of(context).textTheme.bodySmall;
    return Container(
        padding: const EdgeInsets.all(p10),
        width: Responsive.isMobile(context) ? 150 : 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
                onTap: () {
                  Navigator.pushNamed(context, SolutionRoutes.presentation);
                },
                child: Text("Applications incluses",
                    textAlign: TextAlign.start,
                    style: bodyMedium!.copyWith(fontWeight: FontWeight.bold))),
            const SizedBox(height: p20),
            OnHoverText(builder: (isHovered) {
              return InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                        context, ProduitRoutes.administratonProduit);
                  },
                  child: Text("Administration",
                      textAlign: TextAlign.start,
                      style: bodySmall!.copyWith(
                          color: isHovered ? mainColor : Colors.black)));
            }),
            const SizedBox(height: p10),
            OnHoverText(builder: (isHovered) {
              return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, ProduitRoutes.budgets);
                  },
                  child: Text("Budgets",
                      textAlign: TextAlign.start,
                      style: bodySmall!.copyWith(
                          color: isHovered ? mainColor : Colors.black)));
            }),
            const SizedBox(height: p10),
            OnHoverText(builder: (isHovered) {
              return InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                        context, ProduitRoutes.ressourceHumaines);
                  },
                  child: Text("Ressources Humaines",
                      textAlign: TextAlign.start,
                      style: bodySmall!.copyWith(
                          color: isHovered ? mainColor : Colors.black)));
            }),
            const SizedBox(height: p10),
            OnHoverText(builder: (isHovered) {
              return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, ProduitRoutes.finances);
                  },
                  child: Text("Finance",
                      textAlign: TextAlign.start,
                      style: bodySmall!.copyWith(
                          color: isHovered ? mainColor : Colors.black)));
            }),
            const SizedBox(height: p10),
            OnHoverText(builder: (isHovered) {
              return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, ProduitRoutes.comptabilite);
                  },
                  child: Text("Comptabilité",
                      textAlign: TextAlign.start,
                      style: bodySmall!.copyWith(
                          color: isHovered ? mainColor : Colors.black)));
            }),
            const SizedBox(height: p10),
            OnHoverText(builder: (isHovered) {
              return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, ProduitRoutes.exploitations);
                  },
                  child: Text("Exploitations",
                      textAlign: TextAlign.start,
                      style: bodySmall!.copyWith(
                          color: isHovered ? mainColor : Colors.black)));
            }),
            const SizedBox(height: p10),
            OnHoverText(builder: (isHovered) {
              return InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                        context, ProduitRoutes.commercialeMarketing);
                  },
                  child: Text("Commercial et Marketing",
                      textAlign: TextAlign.start,
                      style: bodySmall!.copyWith(
                          color: isHovered ? mainColor : Colors.black)));
            }),
            const SizedBox(height: p10),
            OnHoverText(builder: (isHovered) {
              return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, ProduitRoutes.logistique);
                  },
                  child: Text("Logistique",
                      textAlign: TextAlign.start,
                      style: bodySmall!.copyWith(
                          color: isHovered ? mainColor : Colors.black)));
            }),
            const SizedBox(height: p10),
            OnHoverText(builder: (isHovered) {
              return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, ProduitRoutes.mailling);
                  },
                  child: Text("Email",
                      textAlign: TextAlign.start,
                      style: bodySmall!.copyWith(
                          color: isHovered ? mainColor : Colors.black)));
            }),
            const SizedBox(height: p10),
            OnHoverText(builder: (isHovered) {
              return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, ProduitRoutes.archives);
                  },
                  child: Text("Archive",
                      textAlign: TextAlign.start,
                      style: bodySmall!.copyWith(
                          color: isHovered ? mainColor : Colors.black)));
            }),
          ],
        ));
  }

  Widget solutionWidget() {
    final bodyMedium = Theme.of(context).textTheme.bodyMedium;
    final bodySmall = Theme.of(context).textTheme.bodySmall;
    return Container(
        padding: const EdgeInsets.all(p10),
        width: Responsive.isMobile(context) ? 150 : 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
                onTap: () {
                  Navigator.pushNamed(context, SolutionRoutes.presentation);
                },
                child: Text("Solutions",
                    textAlign: TextAlign.start,
                    style: bodyMedium!.copyWith(fontWeight: FontWeight.bold))),
            const SizedBox(height: p20),
            OnHoverText(builder: (isHovered) {
              return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, SolutionRoutes.newEntreprise);
                  },
                  child: Text("Nouvelle entreprise",
                      textAlign: TextAlign.start,
                      style: bodySmall!.copyWith(
                          color: isHovered ? mainColor : Colors.black)));
            }),
            const SizedBox(height: p10),
            OnHoverText(builder: (isHovered) {
              return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, SolutionRoutes.pme);
                  },
                  child: Text("PME",
                      textAlign: TextAlign.start,
                      style: bodySmall!.copyWith(
                          color: isHovered ? mainColor : Colors.black)));
            }),
            const SizedBox(height: p10),
            OnHoverText(builder: (isHovered) {
              return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, SolutionRoutes.commerce);
                  },
                  child: Text("Grande entreprise",
                      textAlign: TextAlign.start,
                      style: bodySmall!.copyWith(
                          color: isHovered ? mainColor : Colors.black)));
            }),
            const SizedBox(height: p10),
            OnHoverText(builder: (isHovered) {
              return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, SolutionRoutes.ongAssociation);
                  },
                  child: Text("Associations",
                      textAlign: TextAlign.start,
                      style: bodySmall!.copyWith(
                          color: isHovered ? mainColor : Colors.black)));
            }),
            const SizedBox(height: p10),
            OnHoverText(builder: (isHovered) {
              return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, SolutionRoutes.ongAssociation);
                  },
                  child: Text("ONG & ASBL",
                      textAlign: TextAlign.start,
                      style: bodySmall!.copyWith(
                          color: isHovered ? mainColor : Colors.black)));
            }),
            const SizedBox(height: p10),
          ],
        ));
  }

  Widget ressourceWidget() {
    final bodyMedium = Theme.of(context).textTheme.bodyMedium;
    final bodySmall = Theme.of(context).textTheme.bodySmall;
    return Container(
        padding: const EdgeInsets.all(p10),
        width: Responsive.isMobile(context) ? 150 : 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
                onTap: () {},
                child: Text("Ressources",
                    textAlign: TextAlign.start,
                    style: bodyMedium!.copyWith(fontWeight: FontWeight.bold))),
            const SizedBox(height: p20),
            OnHoverText(builder: (isHovered) {
              return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, RessourceRoutes.evenements);
                  },
                  child: Text("Evenements",
                      textAlign: TextAlign.start,
                      style: bodySmall!.copyWith(
                          color: isHovered ? mainColor : Colors.black)));
            }),
            const SizedBox(height: p10),
            OnHoverText(builder: (isHovered) {
              return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, RessourceRoutes.partenaires);
                  },
                  child: Text("Partenaire",
                      textAlign: TextAlign.start,
                      style: bodySmall!.copyWith(
                          color: isHovered ? mainColor : Colors.black)));
            }),
            const SizedBox(height: p10),
            OnHoverText(builder: (isHovered) {
              return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, RessourceRoutes.newPartenaire);
                  },
                  child: Text("Devenir partenaire",
                      textAlign: TextAlign.start,
                      style: bodySmall!.copyWith(
                          color: isHovered ? mainColor : Colors.black)));
            }),
            const SizedBox(height: p10),
            OnHoverText(builder: (isHovered) {
              return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, RessourceRoutes.securite);
                  },
                  child: Text("Sécurité",
                      textAlign: TextAlign.start,
                      style: bodySmall!.copyWith(
                          color: isHovered ? mainColor : Colors.black)));
            }),
            const SizedBox(height: p10),
            OnHoverText(builder: (isHovered) {
              return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, RessourceRoutes.update);
                  },
                  child: Text("Mise à jour",
                      textAlign: TextAlign.start,
                      style: bodySmall!.copyWith(
                          color: isHovered ? mainColor : Colors.black)));
            }),
            const SizedBox(height: p10),
          ],
        ));
  }

  Widget formationWidget() {
    final bodyMedium = Theme.of(context).textTheme.bodyMedium;
    final bodySmall = Theme.of(context).textTheme.bodySmall;
    return Container(
        padding: const EdgeInsets.all(p10),
        width: Responsive.isMobile(context) ? 150 : 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
                onTap: () {
                  Navigator.pushNamed(context, RessourceRoutes.formations);
                },
                child: Text("Formation et assistance",
                    textAlign: TextAlign.start,
                    style: bodyMedium!.copyWith(fontWeight: FontWeight.bold))),
            const SizedBox(height: p20),
            OnHoverText(builder: (isHovered) {
              return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, ContactRoutes.contact);
                  },
                  child: Text("Aide pour les administrateurs",
                      textAlign: TextAlign.start,
                      style: bodySmall!.copyWith(
                          color: isHovered ? mainColor : Colors.black)));
            }),
            const SizedBox(height: p10),
            OnHoverText(builder: (isHovered) {
              return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, RessourceRoutes.formations);
                  },
                  child: Text("Configuration et déploiement",
                      textAlign: TextAlign.start,
                      style: bodySmall!.copyWith(
                          color: isHovered ? mainColor : Colors.black)));
            }),
            const SizedBox(height: p10),
          ],
        ));
  }
}
