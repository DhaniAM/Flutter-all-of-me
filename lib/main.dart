import 'package:all_of_me/about_page.dart';
import 'package:all_of_me/contact_page.dart';
import 'package:all_of_me/cv_page.dart';
import 'package:all_of_me/portfolio_page.dart';
import 'package:flutter/material.dart';

import 'my_constant.dart';

void main() {
  runApp(const MyApp());
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
      home: const MyNavBar(),
    );
  }
}

class MyNavBar extends StatefulWidget {
  const MyNavBar({Key? key}) : super(key: key);

  @override
  State<MyNavBar> createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  int _botNavBarIndex = 0;
  final PageController _pageController = PageController();

  void _onItemTapped(int index) {
    setState(() {
      _botNavBarIndex = index;
      _pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (value) {
          setState(() {
            _botNavBarIndex = value;
          });
        },
        children: const <Widget>[
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
        child: BottomNavigationBar(
          elevation: 0,
          // font color
          selectedItemColor: MyColor.myBlack,
          // icon color
          selectedIconTheme: const IconThemeData(
            size: 35,
            color: MyColor.myRed,
          ),
          unselectedItemColor: MyColor.myBlack,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: Colors.transparent,
              icon: Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Icon(Icons.interests),
              ),
              label: 'Portfolio',
              tooltip: 'Portfolio',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.transparent,
              icon: Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Icon(Icons.my_library_books_outlined),
              ),
              label: 'CV',
              tooltip: 'CV',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.transparent,
              icon: Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Icon(Icons.contacts_rounded),
              ),
              label: 'Contact',
              tooltip: 'Contact',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.transparent,
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
          currentIndex: _botNavBarIndex,
          onTap: (value) {
            _onItemTapped(value);
          },
        ),
      ),
    );
  }
}
