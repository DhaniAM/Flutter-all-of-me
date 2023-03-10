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
        mainAxisSpacing: 30,
        crossAxisSpacing: 30,
        children: const <StatelessWidget>[
          PortfolioButton(route: MyRoute.moviePro, title: 'Movie Pro'),
          PortfolioButton(route: MyRoute.ditonton, title: 'Ditonton'),
          PortfolioButton(route: MyRoute.hitung2d, title: 'Hitung 2D'),
          PortfolioButton(route: MyRoute.newsApp1, title: 'News App'),
          PortfolioButton(
              route: MyRoute.restaurantApp1, title: 'Restaurant App'),
          PortfolioButton(route: MyRoute.locality, title: 'Locality'),
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
