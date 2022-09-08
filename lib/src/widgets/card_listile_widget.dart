import 'package:flutter/material.dart';
import 'package:work_management_web/src/constants/app_theme.dart';

class CardListile extends StatelessWidget {
  const CardListile({Key? key, required this.icon, required this.title, required this.resume}) : super(key: key);
  final IconData icon;
  final String title;
  final String resume;

  @override
  Widget build(BuildContext context) {
    final bodyLarge = Theme.of(context).textTheme.bodyLarge;
    final bodyMedium = Theme.of(context).textTheme.bodyMedium;
    return ListTile(
      leading: Icon(icon,
          size: 50, color: Colors.blue),
      title: Padding(
        padding: const EdgeInsets.only(bottom: p20),
        child: Text(title,
            style: bodyLarge!
                .copyWith(fontWeight: FontWeight.bold, color: Colors.black)),
      ),
      subtitle: Text(
          resume,
          textAlign: TextAlign.start,
          style: bodyMedium),
    );
  }
}
