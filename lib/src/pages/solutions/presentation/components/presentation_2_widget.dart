import 'package:flutter/material.dart';
import 'package:work_management_web/src/constants/app_theme.dart';

class Presentation2Widget extends StatefulWidget {
  const Presentation2Widget({Key? key}) : super(key: key);

  @override
  State<Presentation2Widget> createState() => _Presentation2WidgetState();
}

class _Presentation2WidgetState extends State<Presentation2Widget> {
  @override
  Widget build(BuildContext context) {
    final headlineMedium = Theme.of(context).textTheme.headlineMedium;
    final height = MediaQuery.of(context).size.height / 2;
    final width = MediaQuery.of(context).size.width / 3;
    return SizedBox(
      height: height,
      width: width,
      child: Column(
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Image.asset(
                "assets/images/fokad_10sec.gif",
                height: 300,
              ))
            ],
          )
        ],
      ),
    );
  }
}
