import 'package:flutter/material.dart';

import '../common/my_constant.dart';

class PortfolioButton extends StatelessWidget {
  const PortfolioButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(50),
      color: MyColor.myLightGreen,
      child: Ink(
        child: InkWell(
          onTap: () {
            // Navigator.pushNamed(context, RegisterPage.registerPageRoute);
          },
          borderRadius: BorderRadius.circular(50),
          // splashColor: Colors.deepOrange,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Icon(
                Icons.book_outlined,
                size: 50,
                // color: Colors.cyan,
              ),
              Text('Portfolio title'),
            ],
          ),
        ),
      ),
    );
  }
}
