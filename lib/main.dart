import 'package:all_of_me/provider/bot_nav_bar_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'common/my_constant.dart';
import 'page/about_page.dart';
import 'page/contact_page.dart';
import 'page/cv_page.dart';
import 'page/portfolio_page.dart';
import 'widget/custom_bot_nav_bar.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => BotNavBarProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'All of Me',
      theme: ThemeData(
        splashColor: MyColor.myRed,
        primarySwatch: Colors.red,
        fontFamily: 'Baloo Bhaina 2',
        textTheme: const TextTheme(
          bodySmall: TextStyle(color: MyColor.myBlack),
          bodyMedium: TextStyle(color: MyColor.myBlack),
          bodyLarge: TextStyle(color: MyColor.myBlack),
        ),
      ),
      home: Scaffold(
        body: PageView(
          controller: Provider.of<BotNavBarProvider>(context, listen: false)
              .pageController,
          onPageChanged: (index) {
            Provider.of<BotNavBarProvider>(context, listen: false)
                .updatePageIndex(index);
          },
          children: const <Widget>[
            PortfolioPage(),
            CvPage(),
            ContactPage(),
            AboutPage(),
          ],
        ),
        extendBody: true,
        bottomNavigationBar: const CustomBotNavBar(),
      ),
    );
  }
}
