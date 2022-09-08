import 'package:flutter/material.dart';
import 'package:work_management_web/src/constants/app_theme.dart';
import 'package:work_management_web/src/utils/data.dart';
import 'package:work_management_web/src/widgets/card_icon_widget.dart';

class NewEntrepriseSection2 extends StatefulWidget {
  const NewEntrepriseSection2({Key? key}) : super(key: key);

  @override
  State<NewEntrepriseSection2> createState() => _NewEntrepriseSection2State();
}

class _NewEntrepriseSection2State extends State<NewEntrepriseSection2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [text1Widget(), const SizedBox(height: p20), gridWidget()],
    );
  }

  Widget text1Widget() {
    return Text("Mettez toute les chances de réussir de votre côté.",
      style: Theme.of(context)
        .textTheme
        .headlineLarge!
        .copyWith(fontWeight: FontWeight.bold, color: Colors.black));
  }

  Widget gridWidget() {
    final dataList =
        List.generate(3, (index) => cardGridList[index])
            .toList();
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        shrinkWrap: true,
        itemCount: dataList.length,
        itemBuilder: ((context, index) {
          final data = dataList[index];
          return CardIconWidget(
              icon: data.icon, title: data.title, resume: data.resume);
        }));
  }
}
