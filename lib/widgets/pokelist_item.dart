import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_app/constants/constants.dart';
import 'package:pokedex_app/model/pokemon_model.dart';

class PokelistItem extends StatelessWidget {
  final PokemonModel pokemon;
  const PokelistItem({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.w),
      ),
      elevation: 3,
      shadowColor: Colors.white,
      color: Colors.red.shade200,
      child: Column(children: [
        Text(
          pokemon.name ?? 'N/A',
          style: Constants.PokemonNameStyle(),
        ),
        Chip(
            label: Text(
          pokemon.type![0].toString(),
          style: Constants.PokemonTypeStyle(),
        ))
      ]),
    );
  }
}
