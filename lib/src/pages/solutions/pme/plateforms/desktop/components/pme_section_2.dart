import 'package:flutter/material.dart';
import 'package:work_management_web/src/constants/app_theme.dart';
import 'package:work_management_web/src/utils/data.dart';
import 'package:work_management_web/src/widgets/card_icon_widget.dart';

class PMESection2 extends StatefulWidget {
  const PMESection2({Key? key}) : super(key: key);

  @override
  State<PMESection2> createState() => _PMESection2State();
}

class _PMESection2State extends State<PMESection2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [text1Widget(), const SizedBox(height: p20), gridWidget()],
    );
  }

  Widget text1Widget() {
    return Text("AVANTAGES POUR LES PETITES ENTREPRISES",
        style: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(fontWeight: FontWeight.bold));
  }

  Widget gridWidget() {
    final dataList =
        List.generate(cardGridList.length, (index) => cardGridList[index])
            .toList();
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, 
          childAspectRatio: 1,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20
        ),
        shrinkWrap: true,
        itemCount: dataList.length,
        itemBuilder: ((context, index) {
          final data = dataList[index];
          return CardIconWidget(
              icon: data.icon, title: data.title, resume: data.resume);
        }));
  }
}
