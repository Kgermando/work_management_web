import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:work_management_web/src/constants/app_theme.dart';

class PresentationSection1 extends StatefulWidget {
  const PresentationSection1({Key? key}) : super(key: key);

  @override
  State<PresentationSection1> createState() => _PresentationSection1State();
}

class _PresentationSection1State extends State<PresentationSection1> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(flex: 3, child: leftWidget()),
        const SizedBox(width: p20),
        Expanded(flex: 2, child: rightWidget()),
      ],
    );
  }

  Widget leftWidget() {
    final headlineLarge = Theme.of(context).textTheme.headlineLarge;
    final headlineSmall = Theme.of(context).textTheme.headlineSmall;
    final bodySmall = Theme.of(context).textTheme.bodySmall;
    return Padding(
      padding: const EdgeInsets.all(p20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                  child: AutoSizeText(
                      "Communiquez, créez et collaborez en équipe",
                      maxLines: 2,
                      style: headlineLarge!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.black)))
            ],
          ),
          const SizedBox(height: p20),
          Row(
            children: [
              Expanded(
                  child: AutoSizeText(
                      "Une solution flexible et innovante qui dope la productivité des organisations et de leurs collaborateurs.",
                      maxLines: 5,
                      style: headlineSmall))
            ],
          ),
          const SizedBox(height: p30),
          ElevatedButton(
              onPressed: () {},
              child: Text("Démarrer",
                  style: bodySmall!.copyWith(color: Colors.white)))
        ],
      ),
    );
  }

  Widget rightWidget() {
    return Image.asset("assets/images/plateform_sans_fond.png");
  }
}
