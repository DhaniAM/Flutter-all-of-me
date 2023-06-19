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
        mainAxisSpacing: 30,
        crossAxisSpacing: 30,
        children: const <StatelessWidget>[
          PortfolioButton(title: 'Movie Pro'),
          PortfolioButton(title: 'Hitung 2D'),
          PortfolioButton(title: 'News App'),
          PortfolioButton(title: 'Restaurant App'),
          PortfolioButton(title: 'Locality'),
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
