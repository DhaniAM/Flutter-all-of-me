import 'package:all_of_me/about_page.dart';
import 'package:all_of_me/contact_page.dart';
import 'package:all_of_me/cv_page.dart';
import 'package:all_of_me/portfolio_page.dart';
import 'package:bottom_bar_page_transition/bottom_bar_page_transition.dart';
import 'package:flutter/material.dart';

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
      theme: ThemeData(primarySwatch: Colors.red),
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
        bottomNavigationBar: BottomNavigationBar(
          selectedIconTheme: const IconThemeData(size: 35),
          selectedFontSize: 18,
          selectedItemColor: Colors.white,
          backgroundColor: Colors.blueAccent,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Icon(Icons.interests),
              ),
              label: 'Portfolio',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Icon(Icons.my_library_books_outlined),
              ),
              label: 'CV',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Icon(Icons.contacts_rounded),
              ),
              label: 'Contact',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Icon(
                  Icons.info,
                ),
              ),
              label: 'About',
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
    );
  }
}
