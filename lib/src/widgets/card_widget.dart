import 'package:flutter/material.dart';
import 'package:work_management_web/src/constants/app_theme.dart';
import 'package:work_management_web/src/constants/responsive.dart';

class CardWidget extends StatelessWidget {
  const CardWidget(
      {Key? key,
      required this.color,
      required this.title,
      required this.resume,
      required this.image})
      : super(key: key);

  final Color color;
  final String title;
  final String resume;
  final String image;

  @override
  Widget build(BuildContext context) {
    final headline6 = Theme.of(context).textTheme.headline6;
    final bodyLarge = Theme.of(context).textTheme.bodyLarge;
    final size = MediaQuery.of(context).size;
    double widthSized = 200;

    if (Responsive.isDesktop(context)) {
      widthSized = size.width / 4;
    } else if (Responsive.isTablet(context)) {
      widthSized = size.width / 2.3;
    } else {
      widthSized = size.width;
    }

    return Card(
      elevation: p5,
      child: InkWell(
        onTap: () {},
        child: Ink(
          child: Container(
            padding: const EdgeInsets.all(p8),
            width: widthSized,
            // height: 200,
            child: Column(
              children: [
                Image.asset(image, height: 200, fit: BoxFit.fill),
                const SizedBox(height: p8),
                Text(title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: headline6),
                const SizedBox(height: p16),
                Text(resume,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: bodyLarge),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
