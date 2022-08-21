import 'package:flutter/material.dart';
import 'package:money_search/view/Home/homeView.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    navegate();
    super.initState();
  }
  /// naegação ao inicar a tela
  navegate() {
    Future.delayed(
      Duration(seconds: 5),
      () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomeView())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  _body() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding:
              EdgeInsets.only(left: 20, right: 20, top: 44.92, bottom: 46.55),
          child: Image.asset(
            "assets/money.jpg",
            width: 700,
            height: 150,
            alignment: Alignment.center,
          ),
        ),
      ],
    );
  }
}
