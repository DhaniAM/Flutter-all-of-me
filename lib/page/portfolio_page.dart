import 'package:all_of_me/common/my_constant.dart';
import 'package:flutter/material.dart';

import '../widget/portfolio_button.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GridView.count(
        padding: const EdgeInsets.all(20),
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: const <StatelessWidget>[
          PortfolioButton(route: MyRoute.moviePro, title: 'Movie Pro'),
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
          PortfolioButton(),
        ],
      ),
    );
  }
}
