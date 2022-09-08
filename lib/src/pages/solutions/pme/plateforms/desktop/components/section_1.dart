import 'package:flutter/material.dart';
import 'package:work_management_web/src/constants/app_theme.dart';

class PMESection1 extends StatefulWidget {
  const PMESection1({Key? key}) : super(key: key);

  @override
  State<PMESection1> createState() => _PMESection1State();
}

class _PMESection1State extends State<PMESection1> {
  @override
  Widget build(BuildContext context) {
    final bodySmall = Theme.of(context).textTheme.bodySmall;
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 1100) {
        return Column(
          children: [
            IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(child: Image.asset("assets/images/pme.jpg")),
                  const SizedBox(width: p20),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      text1Widget(),
                      const SizedBox(height: p20),
                      text2Widget(),
                      const SizedBox(height: p30),
                      ElevatedButton(
                          onPressed: () {},
                          child: Text("Démarrer",
                              style: bodySmall!.copyWith(color: Colors.white)))
                    ],
                  ))
                ],
              ),
            )
          ],
        ); 
      }  else {
          return Column(
          children: [
            IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  text1Widget(),
                  const SizedBox(height: p20),
                  text2Widget(),
                  const SizedBox(height: p30),
                  ElevatedButton(
                      onPressed: () {},
                  child: Text("Démarrer",
                      style: bodySmall!.copyWith(color: Colors.white)))
                ],
              ),
            ),
            const SizedBox(height: p20),
            Image.asset("assets/images/pme.jpg")
          ],
        ); 
      }
    });

    
  }

  Widget text1Widget() {
    return Text("Simplifiez vos méthodes de travail.",
        style: Theme.of(context)
            .textTheme
            .headlineLarge!
            .copyWith(fontWeight: FontWeight.bold, color: Colors.black));
  }

  Widget text2Widget() {
    return Text(
        "Google Workspace vous permet de réunir tous les outils dont les membres de votre équipe ont besoin pour collaborer et être plus productifs : messagerie professionnelle, outils de visioconférence, stockage dans le cloud et fonctions de partage de fichiers.",
        style: Theme.of(context).textTheme.bodyLarge);
  }
}
