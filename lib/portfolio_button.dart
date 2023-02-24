import 'package:flutter/material.dart';

class PortfolioButton extends StatelessWidget {
  const PortfolioButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        color: Colors.red,
        width: 50,
        height: 50,
        child: InkWell(
          onTap: () {},
          splashColor: Colors.grey,
          child: Center(
            child: Text('hello'),
          ),
        ),
      ),
    );
  }
}
