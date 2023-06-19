import 'package:flutter/material.dart';

class MyColor {
  MyColor._();
  static const Color myBlack = Color(0xff4D455D);
  static const Color myRed = Color(0xffE96479);
  static const Color myYellow = Color(0xffF5E9CF);
  static const Color myWhite = Color(0xffFDFAF2);
  static const Color myDarkGreen = Color(0xff7DB9B6);
  static const Color myLightGreen = Color(0xffABDFDD);
  static const Color myLightGreen2 = Color(0xffC8EAE8);
}

class MyImage {
  MyImage._();
  static const String binus = 'assets/img/binus.png';
  static const String cakap = 'assets/img/cakap.png';
  static const String dicoding = 'assets/img/dicoding.png';
  static const String github = 'assets/img/github.png';
  static const String gmail = 'assets/img/gmail.png';
  static const String indo = 'assets/img/indo.png';
  static const String linkedin = 'assets/img/linkedin.png';
  static const String profile = 'assets/img/profile.png';
  static const String progate = 'assets/img/progate.png';
  static const String sololearn = 'assets/img/sololearn.png';
  static const String uk = 'assets/img/uk.png';
  static const String web = 'assets/img/web.png';
  static const String whatsapp = 'assets/img/whatsapp.png';
}

class MyLogo {
  MyLogo._();
  static const String ai = 'assets/logo/ai.png';
  static const String ae = 'assets/logo/ae.png';
  static const String android = 'assets/logo/android.png';
  static const String aws = 'assets/logo/aws.png';
  static const String cpd = 'assets/logo/cpd.png';
  static const String cpp = 'assets/logo/cpp.png';
  static const String css = 'assets/logo/css.png';
  static const String dart = 'assets/logo/dart.png';
  static const String devops = 'assets/logo/devops.png';
  static const String figma = 'assets/logo/figma.png';
  static const String git = 'assets/logo/git.png';
  static const String github = 'assets/logo/github.png';
  static const String html = 'assets/logo/html.png';
  static const String java = 'assets/logo/java.png';
  static const String js = 'assets/logo/js.png';
  static const String node = 'assets/logo/node.png';
  static const String pr = 'assets/logo/pr.png';
  static const String ps = 'assets/logo/ps.png';
  static const String python = 'assets/logo/python.png';
  static const String react = 'assets/logo/react.png';
  static const String sql = 'assets/logo/sql.png';
  static const String go = 'assets/logo/go.png';
  static const String jquery = 'assets/logo/jquery.png';
  static const String sass = 'assets/logo/sass.png';
  static const String php = 'assets/logo/php.png';
  static const String ruby = 'assets/logo/ruby.png';
  static const String rails = 'assets/logo/rails.png';
}

class MyStyle {
  MyStyle._();

  static const TextStyle headerStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle skillHeader1Style = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 24,
  );

  static const TextStyle skillHeader2Style = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );

  static const TextStyle contentHeaderStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );

  static const BoxDecoration panelContentDecoration = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: <Color>[
        MyColor.myLightGreen2,
        Colors.white,
      ],
    ),
  );

  static const Divider cvDivider = Divider(
    color: MyColor.myDarkGreen,
    height: 50,
    thickness: 0.8,
  );

  static const Color cvChipColor = MyColor.myLightGreen2;

  static const FlutterLogo cvFlutterLogo = FlutterLogo(size: 30);
}
