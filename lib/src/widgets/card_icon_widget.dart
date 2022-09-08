import 'package:flutter/material.dart';
import 'package:work_management_web/src/constants/app_theme.dart';

class CardIconWidget extends StatelessWidget {
  const CardIconWidget(
      {Key? key, required this.icon, required this.title, required this.resume})
      : super(key: key);
  final IconData icon;
  final String title;
  final String resume;

  @override
  Widget build(BuildContext context) {
    final headlineSmall = Theme.of(context).textTheme.headlineSmall;
    final bodyLarge = Theme.of(context).textTheme.bodyLarge;
    return Container(
      // color: Colors.amber,
      // height: 100,
      padding: const EdgeInsets.all(p10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.amber.shade700, size: 30),
          const SizedBox(height: p20),
          Text(title, style: headlineSmall!.copyWith(color: Colors.black)),
          const SizedBox(height: p20),
          Text(resume, style: bodyLarge),
        ],
      ),
    );
  }
}
