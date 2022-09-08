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
    final bodyMedium = Theme.of(context).textTheme.bodyMedium;
    final bodySmall = Theme.of(context).textTheme.bodySmall;
    return SizedBox(
      // height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.amber.shade700, size: 30),
          const SizedBox(height: p20),
          Text(title, style: bodyMedium),
          const SizedBox(height: p20),
          Text(resume, style: bodySmall),
        ],
      ),
    );
  }
}
