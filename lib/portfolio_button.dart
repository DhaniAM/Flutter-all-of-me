import 'package:all_of_me/my_constant.dart';
import 'package:flutter/material.dart';

class PortfolioButton extends StatelessWidget {
  const PortfolioButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      color: myWhite,
      child: Ink(
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(50),
          splashColor: Colors.deepOrange,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Icon(
                Icons.book_outlined,
                size: 50,
                color: Colors.cyan,
              ),
              Text('Portfolio title'),
            ],
          ),
        ),
      ),
    );
  }
}
