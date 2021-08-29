import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:store/utils/ChangeLenguage.dart';

class View extends StatelessWidget {
  final int counter;
  final AppLocale language;
  final void Function() increment;
  final String title;
  final bool Function(AppLocale, bool) changeLenguage;

  View(
      {required this.counter,
      required this.increment,
      required this.title,
      required this.changeLenguage,
      required this.language});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/SignUp');
              },
              child: Text('Hola'),
            ),
            Switch(
              onChanged: (bool value) {
                changeLenguage(language, value);
              },
              value: language.locale == Locale('en') ? false : true,
            ),
            Text(AppLocalizations.of(context)!.test)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: increment,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}