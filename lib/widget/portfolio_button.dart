import 'package:flutter/material.dart';

import '../common/my_constant.dart';

class PortfolioButton extends StatelessWidget {
  final String? title;
  const PortfolioButton({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(50),
      color: title != null ? MyColor.myLightGreen : Colors.grey[300],
      elevation: 25,
      child: Ink(
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(
                Icons.book_outlined,
                size: 50,
              ),
              Text(title ?? 'Coming Soon'),
            ],
          ),
        ),
      ),
    );
  }
}
