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
