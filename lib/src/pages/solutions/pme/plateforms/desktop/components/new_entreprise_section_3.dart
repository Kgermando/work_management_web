import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart'; 
import 'package:work_management_web/src/constants/app_theme.dart';
import 'package:work_management_web/src/widgets/card_listile_widget.dart';

class NewEntrepriseSection3 extends StatefulWidget {
  const NewEntrepriseSection3({Key? key}) : super(key: key);

  @override
  State<NewEntrepriseSection3> createState() => _NewEntrepriseSection3State();
}

class _NewEntrepriseSection3State extends State<NewEntrepriseSection3> {
  @override
  Widget build(BuildContext context) { 
    return Column(
      children: [
        text1Widget(),
        const SizedBox(height: p20),
        GridView.count(
          shrinkWrap: true,
          crossAxisCount: 3, 
          children: const [
            CardListile(icon: BootstrapIcons.number_1_circle, 
              title: "S'inscrire à Google Workspace", 
              resume: "Lors de votre inscription, indiquez le domaine que vous voulez utiliser avec votre messagerie professionnelle. Si vous n'êtes pas encore propriétaire du domaine en question, vous pouvez l'acheter auprès de Google, moyennant des frais supplémentaires."
            ),
            CardListile(icon: BootstrapIcons.number_2_circle, 
              title: "S'inscrire à Google Workspace", 
              resume: "Lors de votre inscription, indiquez le domaine que vous voulez utiliser avec votre messagerie professionnelle. Si vous n'êtes pas encore propriétaire du domaine en question, vous pouvez l'acheter auprès de Google, moyennant des frais supplémentaires.",
            ),
            CardListile(icon: BootstrapIcons.number_3_circle, 
              title: "S'inscrire à Google Workspace", 
              resume: "Lors de votre inscription, indiquez le domaine que vous voulez utiliser avec votre messagerie professionnelle. Si vous n'êtes pas encore propriétaire du domaine en question, vous pouvez l'acheter auprès de Google, moyennant des frais supplémentaires.",
            ),   
          ],
        ),
      ],
    );
  }

  Widget text1Widget() {
    return Text("Mettez toute les chances de réussir de votre côté.",
        style: Theme.of(context)
            .textTheme
            .headlineLarge!
            .copyWith(fontWeight: FontWeight.bold, color: Colors.black));
  }
}
