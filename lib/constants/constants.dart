import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  Constants._();

  static const String title = 'Pokedex';

  static TextStyle TitleStyle() {
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 48,
    );
  }

  static TextStyle PokemonNameStyle() {
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 28,
    );
  }

  static TextStyle PokemonTypeStyle() {
    return TextStyle(
      color: Colors.white,
      fontSize: 18,
    );
  }

  static _calculateFontSize(double size) {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return size.sp;
    } else {
      //! use .sp in fonts
      return (size * 1.5).sp;
    }
  }

  static TextStyle getPokeInformationLabelStyle() {
    return TextStyle(
      fontSize: 20,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle getPokeInformationTextStyle() {
    return TextStyle(
      fontSize: 16,
      color: Colors.black,
    );
  }
}
