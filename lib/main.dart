import 'package:flutter/material.dart';
import 'package:store/routes/index.dart';
import 'package:store/utils/ChangeLenguage.dart';
import 'Pages/Home/Home.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppLocale(),
      child: Consumer<AppLocale>(builder: (context, locale, child) {
        return MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: locale.locale,
          title: 'Store Test',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: Home(),
          routes: routes,
          debugShowCheckedModeBanner: false,
        );
      }),
    );
  }
}
