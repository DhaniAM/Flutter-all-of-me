import 'package:flutter/material.dart';

class PortfolioButton extends StatelessWidget {
  const PortfolioButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        width: 50,
        height: 50,
        child: InkWell(
          onTap: () {},
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
