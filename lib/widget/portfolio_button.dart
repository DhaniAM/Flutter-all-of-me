import 'package:flutter/material.dart';

import '../common/my_constant.dart';

class PortfolioButton extends StatelessWidget {
  final String? title;
  final List? portfolioImage;
  const PortfolioButton({
    Key? key,
    this.portfolioImage,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(50),
      color: title != null ? MyColor.myLightGreen : Colors.grey[300],
      elevation: 25,
      child: Ink(
        child: InkWell(
          onTap: () {
            showDialog(
                context: context,
                builder: (_) {
                  String img1 = MyPortfolioImage.defaultPortfolio;
                  String img2 = MyPortfolioImage.defaultPortfolio;
                  String img3 = MyPortfolioImage.defaultPortfolio;
                  if (portfolioImage != null) {
                    img1 = portfolioImage![0];
                    img2 = portfolioImage![1];
                    img3 = portfolioImage![2];
                  }
                  return AlertDialog(
                    title: Text(
                      title ?? 'Coming soon',
                      style: const TextStyle(
                          fontSize: 42,
                          color: MyColor.myBlack,
                          fontWeight: FontWeight.bold),
                    ),
                    content: Column(
                      children: [
                        Image.asset(
                          img1,
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
                          img2,
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
                          img3,
                          height: 600,
                        ),
                      ],
                    ),
                    scrollable: true,
                    backgroundColor: MyColor.myLightGreen2,
                    contentPadding: const EdgeInsets.only(right: 30, left: 30),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Back'),
                      ),
                      ElevatedButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Download'),
                      ),
                    ],
                  );
                });
          },
          borderRadius: BorderRadius.circular(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(
                Icons.book_outlined,
                size: 50,
              ),
              Text(title ?? 'Coming Soon'),
            ],
          ),
        ),
      ),
    );
  }
}
