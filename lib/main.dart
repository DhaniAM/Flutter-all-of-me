import 'package:all_of_me/about_page.dart';
import 'package:all_of_me/contact_page.dart';
import 'package:all_of_me/cv_page.dart';
import 'package:all_of_me/portfolio_page.dart';
import 'package:bottom_bar_page_transition/bottom_bar_page_transition.dart';
import 'package:flutter/material.dart';

import 'my_constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int botNavBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'All of Me',
      theme: ThemeData(
        splashColor: myRed,
        primarySwatch: Colors.red,
        fontFamily: 'Baloo Bhaina 2',
        textTheme: const TextTheme(
          bodySmall: TextStyle(color: myBlack),
          bodyMedium: TextStyle(color: myBlack),
          bodyLarge: TextStyle(color: myBlack),
        ),
      ),
      home: Scaffold(
        body: BottomBarPageTransition(
          currentIndex: botNavBarIndex,
          totalLength: 2,
          builder: (context, index) {
            switch (index) {
              case 0:
                return const PortfolioPage();
              case 1:
                return const CvPage();
              case 2:
                return const ContactPage();
              case 3:
                return const AboutPage();
              default:
                return const PortfolioPage();
            }
          },
        ),
        extendBody: true,
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 15,
                spreadRadius: 0,
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(40)),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
            child: BottomNavigationBar(
              // font color
              selectedItemColor: myBlack,
              // icon color
              selectedIconTheme: const IconThemeData(
                size: 35,
                color: myRed,
              ),
              unselectedItemColor: myBlack,

              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(bottom: 4),
                    child: Icon(Icons.interests),
                  ),
                  label: 'Portfolio',
                  tooltip: 'Portfolio',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(bottom: 4),
                    child: Icon(Icons.my_library_books_outlined),
                  ),
                  label: 'CV',
                  tooltip: 'CV',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(bottom: 4),
                    child: Icon(Icons.contacts_rounded),
                  ),
                  label: 'Contact',
                  tooltip: 'Contact',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(bottom: 4),
                    child: Icon(
                      Icons.info,
                    ),
                  ),
                  label: 'About',
                  tooltip: 'About',
                ),
              ],
              currentIndex: botNavBarIndex,
              onTap: (value) {
                setState(() {
                  botNavBarIndex = value;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
