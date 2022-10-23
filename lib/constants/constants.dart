import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Constants {
  Constants._();

  static const String title = 'Pokedex';

  static TextStyle TitleStyle() {
    return const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 48,
    );
  }

  static TextStyle PokemonNameStyle() {
    return const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 28,
    );
  }

  static TextStyle PokemonTypeStyle() {
    return const TextStyle(
      color: Colors.white,
      fontSize: 18,
    );
  }
}
