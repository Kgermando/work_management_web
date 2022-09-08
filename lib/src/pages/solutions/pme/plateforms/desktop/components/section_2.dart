import 'package:flutter/material.dart';
import 'package:work_management_web/src/constants/app_theme.dart';
import 'package:work_management_web/src/constants/responsive.dart';
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
      children: [
        text1Widget(), 
        const SizedBox(height: p20), 
        gridWidget(),
        
      ],
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
    int count = 0; 
    if (MediaQuery.of(context).size.width >= 1100) {
      count = 3;
    } else if (MediaQuery.of(context).size.width < 1100 &&
        MediaQuery.of(context).size.width >= 650) {
      count = 2;
    } else if (MediaQuery.of(context).size.width < 650) {
      count = 1;
    }
    final dataList =
        List.generate(cardGridList.length, (index) => cardGridList[index])
            .toList();
    return GridView.builder(
        primary: false,
        // padding: const EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: count, 
          crossAxisSpacing: 10,
          mainAxisSpacing: 10, 
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
