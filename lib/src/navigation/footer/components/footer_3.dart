import 'package:flutter/material.dart';
import 'package:work_management_web/src/constants/app_theme.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer3 extends StatefulWidget {
  const Footer3({Key? key}) : super(key: key);

  @override
  State<Footer3> createState() => _Footer3State();
}

class _Footer3State extends State<Footer3> {
  final Uri _url = Uri.parse('https://eventdrc.com');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 300,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: mainColor),
            ),
          ),
          child: InkWell(
            onTap: _launchUrl,
            child: Text(
              "©${DateTime.now().year} Eventdrc Technology",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        )
      ],
    );
  }
}
