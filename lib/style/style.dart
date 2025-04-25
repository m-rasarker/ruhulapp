import 'package:flutter/material.dart';

final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
  padding: EdgeInsets.all(15),
  backgroundColor: Colors.green,
  foregroundColor: Colors.white,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(40)),
  ),
);


const TextStyle textStyle = TextStyle(

  fontSize: 16,
  color: Colors.black,
  backgroundColor: Colors.white,
  decoration: TextDecoration.none,
  letterSpacing: 1.0,

);


// A function that returns a TextStyle
TextStyle customTextStyle({
  double fontSize = 14.0,            // Default font size
  FontWeight fontWeight = FontWeight.normal,  // Default font weight
  Color color = Colors.black,       // Default text color
  FontStyle fontStyle = FontStyle.normal,    // Default font style (normal or italic)
  String fontFamily = '',           // Default font family
  double letterSpacing = 0.0,       // Default letter spacing
  double height = 1.0,              // Default line height
  TextDecoration decoration = TextDecoration.none, // Default text decoration
  TextBaseline textBaseline = TextBaseline.alphabetic, // Default text baseline
}) {
  return TextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    fontStyle: fontStyle,
    fontFamily: fontFamily.isNotEmpty ? fontFamily : null, // Only set if non-empty
    letterSpacing: letterSpacing,
    height: height,
    decoration: decoration,
    textBaseline: textBaseline,
  );
}

ButtonStyle customButtonStyle({
  Color backgroundColor = Colors.teal,
  double borderRadius = 8.0,
  EdgeInsetsGeometry padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
}) {
  return ElevatedButton.styleFrom(
    backgroundColor: backgroundColor,
    padding: padding,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(borderRadius),
    ),
    textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
  );
}