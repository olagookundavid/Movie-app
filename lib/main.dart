// ignore_for_file: avoid_returning_null_for_void, use_key_in_widget_constructors

import 'package:flickd_app/pages/main_mobile_page.dart';
import 'package:flickd_app/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'pages/main_web_page.dart';
import 'responsive.dart';

void main() {
  runApp(SplashPage(
    key: UniqueKey(),
    onInitializationComplete: () {
      runApp(ProviderScope(child: MyApp()));
    },
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Movie App",
      home: const ResponsiveLayout(
        mobileScreenLayout: MainMobilePage(),
        webScreenLayout: MainWebPage(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
