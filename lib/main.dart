import 'package:all_of_me/provider/bot_nav_bar_provider.dart';
import 'package:all_of_me/provider/cv_panel_provider.dart';
import 'package:all_of_me/widget/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'common/my_constant.dart';
import 'common/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        navigatorObservers: [routeObserver],
        onGenerateRoute: (RouteSettings settings) {
          switch (settings.name) {
            case '/home':
              return MaterialPageRoute(builder: (_) => const CustomScaffold());
            // TODO: fix this later
            case '/movie_pro':
              return MaterialPageRoute(builder: (_) => const Center());
            default:
              return MaterialPageRoute(
                builder: (_) {
                  return const Scaffold(
                    body: Center(
                      child: Text('Page not found :('),
                    ),
                  );
                },
              );
          }
        },
        home: const CustomScaffold(),
      ),
    );
  }
}
