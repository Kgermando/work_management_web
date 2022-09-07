import 'package:flutter/cupertino.dart';
import 'package:work_management_web/src/utils/data.dart';
import 'package:work_management_web/src/widgets/card_widget.dart';

class EvenementPresentation extends StatefulWidget {
  const EvenementPresentation({Key? key}) : super(key: key);

  @override
  State<EvenementPresentation> createState() => _EvenementPresentationState();
}

class _EvenementPresentationState extends State<EvenementPresentation> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height,
      child: GridView.count(
        crossAxisCount: 3,
        children: List.generate(featureList.length, (index) {
          final feature = featureList[index];
          final color = lightColors[index % lightColors.length];
          return CardWidget(
              color: color,
              title: feature.title,
              resume: feature.resume,
              image: feature.image);
        }),
      ),
    );
  }
}
