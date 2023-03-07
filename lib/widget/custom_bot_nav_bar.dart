import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../common/my_constant.dart';
import '../provider/bot_nav_bar_provider.dart';

class CustomBotNavBar extends StatelessWidget {
  const CustomBotNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
        currentIndex: Provider.of<BotNavBarProvider>(context).pageIndex,
        onTap: (value) {
          Provider.of<BotNavBarProvider>(context, listen: false)
              .updatePageIndexAnimate(value);
        },
      ),
    );
  }
}
