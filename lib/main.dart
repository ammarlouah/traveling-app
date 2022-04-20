import 'package:flutter/material.dart';
import 'package:traveling_app/screens/categories_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:traveling_app/screens/category_trips_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('ar', 'AE'),
      ],
      title: 'Traveling app',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Colors.amber,
          fontFamily: 'ElMessiri',
          textTheme: ThemeData.light().textTheme.copyWith(
              headline5: TextStyle(
                color: Colors.blue,
                fontSize: 24,
                fontFamily: 'ElMessiri',
                fontWeight: FontWeight.bold,
              ),
              headline6: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontFamily: 'ElMessiri',
                fontWeight: FontWeight.bold,
              ))),
      home: CategoriesScreen(),
      routes: {
        '/categorie-trips': (ctx) => CategoryTripsScreen(),
      },
    );
  }
}
