import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../page/about_page.dart';
import '../page/contact_page.dart';
import '../page/cv_page.dart';
import '../page/portfolio_page.dart';
import '../provider/bot_nav_bar_provider.dart';
import 'custom_bot_nav_bar.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: Provider.of<BotNavBarProvider>(context, listen: false)
            .pageController,
        onPageChanged: (index) {
          Provider.of<BotNavBarProvider>(context, listen: false)
              .updatePageIndex(index);
        },
        children: const <StatelessWidget>[
          PortfolioPage(),
          CvPage(),
          ContactPage(),
          AboutPage(),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 15,
              spreadRadius: 0,
            ),
          ],
        ),
        child: const CustomBotNavBar(),
      ),
    );
  }
}
