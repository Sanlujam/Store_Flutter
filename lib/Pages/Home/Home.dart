import 'package:store/utils/ChangeLenguage.dart';
import 'package:store/Pages/Home/HomeView.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'HomeView.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var language = Provider.of<AppLocale>(context);
    return View(
      counter: _counter,
      increment: _incrementCounter,
      title: widget.title,
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
