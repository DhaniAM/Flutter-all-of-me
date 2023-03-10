import 'package:flutter/material.dart';

import '../common/my_constant.dart';

class PortfolioButton extends StatelessWidget {
  final String? route;
  final String? title;
  const PortfolioButton({
    Key? key,
    this.route,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(50),
      color: MyColor.myLightGreen,
      child: Ink(
        child: InkWell(
          onTap: () {
            if (route != null) {
              Navigator.pushNamed(context, MyRoute.moviePro);
            } else {
              Navigator.pushNamed(context, '/unknown');
            }
          },
          borderRadius: BorderRadius.circular(50),
          // splashColor: Colors.deepOrange,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(
                Icons.book_outlined,
                size: 50,
                // color: Colors.cyan,
              ),
              Text(title ?? 'Coming Soon'),
            ],
          ),
        ),
      ),
    );
  }
}
