import 'package:flutter/material.dart';

class ContactButton extends StatelessWidget {
  final String imgLocation;
  final String socialMediaName;
  final String url;
  const ContactButton({
    required this.imgLocation,
    required this.socialMediaName,
    required this.url,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        child: InkWell(
          onTap: () {},
          splashColor: Colors.deepOrange,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imgLocation,
                width: 50,
              ),
              Text(socialMediaName),
              Text(url),
            ],
          ),
        ),
      ),
    );
  }
}
