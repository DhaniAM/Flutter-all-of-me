import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../common/my_constant.dart';

class PortfolioButton extends StatelessWidget {
  final String? title;
  final List? portfolioImage;
  final String? url;
  final Icon? icon;
  const PortfolioButton({
    Key? key,
    this.title,
    this.portfolioImage,
    this.url,
    this.icon,
  }) : super(key: key);

  void _launchUrl() async {
    final Uri parsedUrl;
    if (url != null) {
      parsedUrl = Uri.parse(url!);
    } else {
      parsedUrl = Uri.parse('');
    }
    try {
      // must add <queries><intent> in AndroidManifest.xml to make canLaunchUrl work
      await launchUrl(parsedUrl, mode: LaunchMode.externalApplication);
    } catch (e) {
      throw 'Could not launch $url with $e';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(50),
      color: title != null ? MyColor.myLightGreen : Colors.grey[200],
      elevation: 25,
      child: Ink(
        child: InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (_) {
                List<String> img = [];
                if (portfolioImage != null) {
                  img.add(portfolioImage![0]);
                  img.add(portfolioImage![1]);
                  img.add(portfolioImage![2]);
                } else {
                  img.add(MyPortfolioImage.defaultPortfolio);
                }
                return AlertDialog(
                  title: Text(
                    title ?? 'Coming soon',
                    style: const TextStyle(
                        fontSize: 42,
                        color: MyColor.myBlack,
                        fontWeight: FontWeight.bold),
                  ),
                  content: (title != null)
                      ? Column(
                          children: [
                            Image.asset(
                              img[0],
                              height: 600,
                            ),
                            const Divider(
                              height: 50,
                              color: MyColor.myRed,
                              indent: 75,
                              endIndent: 75,
                              thickness: 1,
                            ),
                            Image.asset(
                              img[1],
                              height: 600,
                            ),
                            const Divider(
                              height: 50,
                              thickness: 1,
                              indent: 75,
                              endIndent: 75,
                              color: MyColor.myRed,
                            ),
                            Image.asset(
                              img[2],
                              height: 600,
                            ),
                          ],
                        )
                      : Image.asset(MyPortfolioImage.defaultPortfolio),
                  scrollable: true,
                  backgroundColor: MyColor.myLightGreen2,
                  contentPadding: const EdgeInsets.only(right: 30, left: 30),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Back'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (title != null) {
                          _launchUrl();
                        }
                      },
                      child: Text(title != null ? 'Download' : 'Unavailable'),
                    ),
                  ],
                );
              },
            );
          },
          borderRadius: BorderRadius.circular(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              (icon != null)
                  ? icon!
                  : const Icon(
                      Icons.bookmark_add_outlined,
                      size: 42,
                      color: MyColor.myBlack,
                    ),
              Text(
                title ?? 'Coming Soon',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: MyColor.myBlack,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
