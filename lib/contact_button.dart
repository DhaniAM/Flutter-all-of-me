import 'package:all_of_me/my_constant.dart';
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
      elevation: 25,
      borderRadius: BorderRadius.circular(50),
      color: myLightGreen,
      child: Ink(
        width: 100,
        height: 100,
        child: InkWell(
          onTap: () {
            _launchUrl(url);
          },
          borderRadius: BorderRadius.circular(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imgLocation,
                height: 70,
                width: 70,
              ),
              const SizedBox(height: 8),
              Text(
                socialMediaName,
                style: const TextStyle(
                  color: myBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
