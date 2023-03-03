import 'package:all_of_me/my_constant.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle customStyle(double size, bool isBold) {
      if (isBold) {
        return TextStyle(
          fontSize: size,
          fontWeight: FontWeight.bold,
          color: myBlack,
        );
      }
      return TextStyle(
        fontSize: size,
        color: myBlack,
      );
    }

    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(size: screenWidth / 2),
            Text(
              'All of Me',
              style: customStyle(40, true),
            ),
            Text(
              'Created using Flutter',
              style: customStyle(20, false),
            ),
            const SizedBox(
              height: 0,
            ),
            Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              runSpacing: 0,
              children: [
                Text(
                  'Copyright  ',
                  textAlign: TextAlign.center,
                  style: customStyle(20, false),
                ),
                const Icon(
                  Icons.copyright,
                  size: 20,
                ),
                Text(
                  '2023 by ',
                  style: customStyle(20, false),
                ),
                Text(
                  'Ramadhani Adjar Mustaqim',
                  style: customStyle(20, true),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
