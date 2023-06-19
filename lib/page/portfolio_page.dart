import 'package:all_of_me/common/my_constant.dart';
import 'package:flutter/material.dart';

import '../widget/portfolio_button.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    const List<String> movieProImg = [
      MyPortfolioImage.moviePro1,
      MyPortfolioImage.moviePro2,
      MyPortfolioImage.moviePro3
    ];
    const List<String> hitungImg = [
      MyPortfolioImage.hitung1,
      MyPortfolioImage.hitung2,
      MyPortfolioImage.hitung3
    ];
    const List<String> newsImg = [
      MyPortfolioImage.news1,
      MyPortfolioImage.news2,
      MyPortfolioImage.news3
    ];
    const List<String> localityImg = [
      MyPortfolioImage.locality1,
      MyPortfolioImage.locality2,
      MyPortfolioImage.locality3
    ];
    const List<String> restImg = [
      MyPortfolioImage.rest1,
      MyPortfolioImage.rest2,
      MyPortfolioImage.rest3
    ];

    return SafeArea(
      child: GridView.count(
        padding: const EdgeInsets.all(20),
        crossAxisCount: 2,
        mainAxisSpacing: 30,
        crossAxisSpacing: 30,
        children: const <StatelessWidget>[
          PortfolioButton(title: 'Movie Pro', portfolioImage: movieProImg),
          PortfolioButton(title: 'Hitung 2D', portfolioImage: hitungImg),
          PortfolioButton(title: 'News App', portfolioImage: newsImg),
          PortfolioButton(title: 'Restaurant App', portfolioImage: restImg),
          PortfolioButton(title: 'Locality', portfolioImage: localityImg),
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
