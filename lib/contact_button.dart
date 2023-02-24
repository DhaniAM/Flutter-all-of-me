import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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

  void _launchUrl(String webUrl) async {
    final url = Uri.parse(webUrl);
    // must add <queries><intent> in AndroidManifest.xml to make canLaunchUrl work
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white60,
        ),
        child: InkWell(
          onTap: () {
            _launchUrl(url);
          },
          splashColor: Colors.yellow,
          borderRadius: BorderRadius.circular(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imgLocation,
                height: 50,
                width: 50,
              ),
              const SizedBox(height: 25),
              Text(socialMediaName),
            ],
          ),
        ),
      ),
    );
  }
}
