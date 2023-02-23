import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle customStyle(double size, bool isBold) {
      if (isBold) {
        return TextStyle(fontSize: size, fontWeight: FontWeight.bold);
      }
      return TextStyle(fontSize: size);
    }

    double screenWidth = MediaQuery.of(context).size.width;
    return Center(
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
          SizedBox(
            height: 50,
          ),
          Wrap(
            alignment: WrapAlignment.center,
            children: [
              Text(
                'Copyright ',
                textAlign: TextAlign.center,
                style: customStyle(20, false),
              ),
              const Icon(Icons.copyright),
              Text(
                '2023 by ',
                style: customStyle(20, false),
              ),
              Text(
                'Ramadhani Adjar Mustaqim',
                style: customStyle(20, false),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
