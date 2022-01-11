import 'package:flutter/material.dart';

const double kDefaultPadding = 20;

var kButtonStyle = ButtonStyle(
  padding: MaterialStateProperty.all<EdgeInsets>(
    const EdgeInsets.all(15),
  ),
  foregroundColor: MaterialStateProperty.all<Color>(
    Colors.white,
  ),
  backgroundColor: MaterialStateProperty.all<Color>(
    const Color(0xFF0079D0),
  ),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25.0),
      side: const BorderSide(
        color: Color(0xFF0079D0),
      ),
    ),
  ),
);

const kInputDecoration = InputDecoration(
  fillColor: Color(0xFFECEFF1),
  hintText: 'Введите значение',
  filled: true,
  contentPadding: EdgeInsets.symmetric(horizontal: 25.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(50.0),
    ),
    borderSide: BorderSide.none,
  ),
);

const kBigLinkTextStyle = TextStyle(
  color: Color(0xFF0079D0),
  fontWeight: FontWeight.bold,
  fontSize: 16,
);

var kThemeData = ThemeData(
  brightness: Brightness.light,
  primaryColor: const Color(0xFF0079D0),
  backgroundColor: Colors.white,
  fontFamily: 'Georgia',
  colorScheme: const ColorScheme.light(),
  textTheme: const TextTheme(
    headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
    bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
  ),
);
