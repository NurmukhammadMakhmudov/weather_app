import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ThemeForRamble{


  static TextTheme lightTextTheme  = TextTheme(
   headline1: GoogleFonts.roboto(
        fontSize: 24.0,
        fontWeight: FontWeight.w700,
        color: Color(0xffffb359)),
    headline2: GoogleFonts.roboto(
        fontSize: 10.0,
        fontWeight: FontWeight.w700,
        color: Color(0xff919191)),
    bodyText1: GoogleFonts.roboto(
        fontSize: 7.0,
        fontWeight: FontWeight.w700 ,
        color: Color(0xff919191)),
    headline3: GoogleFonts.roboto(
        fontSize: 11.0,
        fontWeight: FontWeight.w600 ,
        color: Color(0xff919191)),

  );


  static light(){
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.white,
      accentColor: Colors.black,
      textSelectionColor: Colors.green,
      textTheme: lightTextTheme,


    );
  }



}