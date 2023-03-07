import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../common/my_constant.dart';

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
    final Uri parsedUrl;
    if (socialMediaName != 'Email') {
      parsedUrl = Uri.parse(webUrl);
    } else {
      parsedUrl = Uri(
        scheme: 'mailto',
        path: webUrl,
      );
    }
    try {
      // must add <queries><intent> in AndroidManifest.xml to make canLaunchUrl work
      if (socialMediaName == 'GitHub' || socialMediaName == 'Website') {
        await launchUrl(parsedUrl, mode: LaunchMode.inAppWebView);
      } else {
        await launchUrl(parsedUrl, mode: LaunchMode.externalApplication);
      }
    } catch (e) {
      throw 'Could not launch $webUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 25,
      borderRadius: BorderRadius.circular(50),
      color: MyColor.myLightGreen,
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
                  color: MyColor.myBlack,
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
