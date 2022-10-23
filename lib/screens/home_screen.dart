import 'package:flutter/material.dart';
import 'package:pokedex_app/widgets/app_title.dart';
import 'package:pokedex_app/widgets/pokemon_list_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const AppTitle(),
          Expanded(child: const PokemonList()),
        ],
      ),
    );
  }
}
