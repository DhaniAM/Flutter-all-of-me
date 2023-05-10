import 'package:all_of_me/provider/bot_nav_bar_provider.dart';
import 'package:all_of_me/provider/cv_panel_provider.dart';
import 'package:all_of_me/widget/custom_scaffold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'common/my_constant.dart';
import 'common/utils.dart';

void main() {
  runApp(const AllOfMeApp());
}

class AllOfMeApp extends StatelessWidget {
  const AllOfMeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BotNavBarProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CvPanelProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'All of Me',
        theme: ThemeData(
          splashColor: MyColor.myRed,
          primarySwatch: Colors.red,
          fontFamily: 'Baloo Bhaina 2',
          textTheme: const TextTheme(
            bodySmall: TextStyle(color: MyColor.myBlack),
            bodyMedium: TextStyle(color: MyColor.myBlack),
            bodyLarge: TextStyle(color: MyColor.myBlack),
          ),
        ),
        home: const CustomScaffold(),
        navigatorObservers: [routeObserver],
        onGenerateRoute: (RouteSettings settings) {
          switch (settings.name) {
            case MyRoute.moviePro:
              return CupertinoPageRoute(builder: (_) => const Scaffold());
            case MyRoute.ditonton:
              return CupertinoPageRoute(builder: (_) => const Scaffold());
            case MyRoute.hitung2d:
              return CupertinoPageRoute(builder: (_) => const Scaffold());
            case MyRoute.newsApp1:
              return CupertinoPageRoute(builder: (_) => const Scaffold());
            case MyRoute.restaurantApp1:
              return CupertinoPageRoute(builder: (_) => const Scaffold());
            case MyRoute.locality:
              return CupertinoPageRoute(builder: (_) => const Scaffold());
            default:
              return CupertinoPageRoute(
                builder: (_) {
                  return const Center(
                    child: Text('Page not found :('),
                  );
                },
              );
          }
        },
      ),
    );
  }
}
