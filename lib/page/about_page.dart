import 'package:flutter/material.dart';

import '../common/my_constant.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlutterLogo(size: screenWidth / 2),
          const Text(
            'All of Me',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: MyColor.myBlack,
            ),
          ),
          const Text(
            'Created using Flutter',
            style: TextStyle(
              fontSize: 20,
              color: MyColor.myBlack,
            ),
          ),
          const SizedBox(height: 0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                'Copyright  ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: MyColor.myBlack,
                ),
              ),
              Icon(
                Icons.copyright,
                size: 20,
              ),
              Text(
                '2023 by ',
                style: TextStyle(
                  fontSize: 20,
                  color: MyColor.myBlack,
                ),
              ),
            ],
          ),
          const Text(
            'Ramadhani Adjar Mustaqim',
            style: TextStyle(
              fontSize: 20,
              color: MyColor.myBlack,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
