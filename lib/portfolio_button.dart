import 'package:flutter/material.dart';

import 'my_constant.dart';

class PortfolioButton extends StatelessWidget {
  const PortfolioButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      color: myLightGreen,
      child: Ink(
        child: InkWell(
          onTap: () {},
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
