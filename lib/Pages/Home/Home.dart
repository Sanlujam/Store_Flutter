import 'package:store/utils/ChangeLenguage.dart';
import 'package:store/Pages/Home/HomeView.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'HomeView.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var language = Provider.of<AppLocale>(context);
    return HomeView(
      counter: _counter,
      increment: _incrementCounter,
      changeLenguage: _changeLenguage,
      language: language,
    );
  }

  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  bool _changeLenguage(AppLocale language, bool value) {
    value == true
        ? language.changeLocale(Locale('es'))
        : language.changeLocale(Locale('en'));
    return value;
  }
}
