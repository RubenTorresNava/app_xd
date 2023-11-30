import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  //crear una variable para utilizar como el color primario
  static const Color primary=Colors.orange;
  static final ThemeData ThemaApp=ThemeData(
    primarySwatch: Colors.orange,
    textTheme: GoogleFonts.emilysCandyTextTheme(),
    scaffoldBackgroundColor: Colors.orange[100],
    //appbar theme
    appBarTheme: const AppBarTheme(
      elevation: 10,
      centerTitle: true,
      titleTextStyle: TextStyle(fontSize: 30, color: Colors.blue)
    ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(elevation: 30, backgroundColor: primary),
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: primary),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(10)
        )
      ),
        focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: primary),
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10)
      )
  )
    )
  );
}