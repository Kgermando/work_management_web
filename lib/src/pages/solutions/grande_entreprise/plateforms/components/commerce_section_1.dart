import 'package:flutter/material.dart';
import 'package:work_management_web/src/constants/app_theme.dart';

class CommerceSection1 extends StatefulWidget {
  const CommerceSection1({Key? key}) : super(key: key);

  @override
  State<CommerceSection1> createState() => _CommerceSection1State();
}

class _CommerceSection1State extends State<CommerceSection1> {
  @override
  Widget build(BuildContext context) {
    final bodySmall = Theme.of(context).textTheme.bodySmall;
    return Column( 
      children: [
        Row( 
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
        )
      ],
    );
  }

  Widget text1Widget() {
    return Text("Simplifiez vos méthodes de travail.",
        style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold));
  }

  Widget text2Widget() {
    return Text("Google Workspace vous permet de réunir tous les outils dont les membres de votre équipe ont besoin pour collaborer et être plus productifs : messagerie professionnelle, outils de visioconférence, stockage dans le cloud et fonctions de partage de fichiers.",
      style: Theme.of(context).textTheme.bodyLarge);
  }
}
