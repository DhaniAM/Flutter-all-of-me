import 'package:all_of_me/portfolio_button.dart';
import 'package:flutter/material.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.orange[100],
        child: Center(
          child: GridView.count(
            padding: const EdgeInsets.all(20),
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: <Widget>[
              PortfolioButton(),
              PortfolioButton(),
              PortfolioButton(),
              PortfolioButton(),
              PortfolioButton(),
              PortfolioButton(),
              PortfolioButton(),
              PortfolioButton(),
              PortfolioButton(),
              PortfolioButton(),
            ],
          ),
        ),
      ),
    );
  }
}
