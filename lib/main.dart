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
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        body: Text("Hello"),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: 'Portfolio',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.info,
                size: 30,
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
