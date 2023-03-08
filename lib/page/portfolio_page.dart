import 'package:flutter/material.dart';

import '../widget/portfolio_button.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Center(
        child: GridView.count(
          padding: const EdgeInsets.all(20),
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: const <StatelessWidget>[
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
    );
  }
}
