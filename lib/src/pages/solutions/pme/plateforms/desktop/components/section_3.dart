import 'package:flutter/material.dart';
import 'package:work_management_web/src/constants/app_theme.dart';
import 'package:work_management_web/src/utils/info_system.dart';

class PMESection3 extends StatefulWidget {
  const PMESection3({Key? key}) : super(key: key);

  @override
  State<PMESection3> createState() => _PMESection3State();
}

class _PMESection3State extends State<PMESection3> {
  @override
  Widget build(BuildContext context) {
    final headlineLarge = Theme.of(context).textTheme.headlineLarge;
    final bodySmall = Theme.of(context).textTheme.bodySmall;
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 1100) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                  TextSpan(text: "Essayez ", style: headlineLarge),
                  TextSpan(
                      text: "${InfoSystem().name()} ",
                      style: headlineLarge!.copyWith(color: Colors.red)),
                  TextSpan(text: "sans frais.", style: headlineLarge)
                ])),
                const SizedBox(height: p20),
                ElevatedButton(
                    onPressed: () {},
                    child: Text("Démarrer",
                        style: bodySmall!.copyWith(color: Colors.white)))
              ],
            ),
          ],
        );
      } else {
        return Column(
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
              children: [
                TextSpan(text: "Essayez ", style: headlineLarge),
                TextSpan(text: "${InfoSystem().name()} ", style: headlineLarge!.copyWith(color: Colors.red)),
                TextSpan(text: "sans frais.", style: headlineLarge)
              ]
            )),
            const SizedBox(height: p20),
            ElevatedButton(
                onPressed: () {},
                child: Text("Démarrer",
                    style: bodySmall!.copyWith(color: Colors.white)))
          ],
        );
      }
    });

    
  }
}
