import 'package:all_of_me/about_page.dart';
import 'package:all_of_me/home_page.dart';
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
  List<Widget> pages = [
    HomePage(),
    AboutPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'All of Me',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        body: pages[botNavBarIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedIconTheme: const IconThemeData(
            size: 30,
          ),
          selectedFontSize: 16,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Icon(
                  Icons.interests,
                ),
              ),
              label: 'Portfolio',
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
