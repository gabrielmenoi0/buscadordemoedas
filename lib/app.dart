import 'package:flutter/material.dart';
import 'package:money_search/view/Splash/splashView.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MoneySearch',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: SplashView(),
    );
  }
}
