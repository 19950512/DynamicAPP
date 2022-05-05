import 'package:aplicativo/constants.dart';
import 'package:flutter/material.dart';

class Themes {
  static ThemeData get light => ThemeData(
        // provide light theme colors
        appBarTheme: AppBarTheme(
          color: Colors.white,
          centerTitle: true,
          foregroundColor: Constants.colors['primary'],
          titleTextStyle: TextStyle(
            fontSize: 30,
            color: Constants.colors['primary'],
          ),
        ),
        drawerTheme: const DrawerThemeData(
            backgroundColor: Colors.white, scrimColor: Colors.transparent),
        textTheme: TextTheme(
          headline3: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Constants.colors['primary'],
          ),
          headline5: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Constants.colors['primary'],
          ),
          headline6: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Constants.colors['primary'],
          ),
          bodyText2: const TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.red,
        scaffoldBackgroundColor: Constants.scaffoldBackground,
        primaryColorDark: Colors.green,
        primaryColor: Colors.lime,
        cardColor: Colors.grey[800],
        cardTheme: CardTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Constants.radius),
          ),
        ),
        buttonTheme: const ButtonThemeData(),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Constants.colors['primary'],
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(Constants.radius)),
            ),
          ),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Constants.colors['primary'],
        ),
      );
}
