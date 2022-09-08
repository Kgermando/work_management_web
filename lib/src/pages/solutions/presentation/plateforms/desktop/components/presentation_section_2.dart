import 'package:flutter/material.dart';
import 'package:work_management_web/src/constants/app_theme.dart';

class PresentationSection2 extends StatefulWidget {
  const PresentationSection2({Key? key}) : super(key: key);

  @override
  State<PresentationSection2> createState() => _PresentationSection2State();
}

class _PresentationSection2State extends State<PresentationSection2> {
  @override
  Widget build(BuildContext context) {
    final headlineMedium = Theme.of(context).textTheme.headlineMedium;
    return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: SelectableText(
                "Des outils de productivité et de collaboration qui s'adaptent à tous les modes de travail",
                textAlign: TextAlign.center,
                style: headlineMedium!
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
              ))
            ],
          ),
          const SizedBox(height: p20),
          Image.asset(
            "assets/images/fokad_10sec.gif",
            height: 300,
          )
        ],
      );
  }
}
