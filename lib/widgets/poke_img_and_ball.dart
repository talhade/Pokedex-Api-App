import 'package:flutter/material.dart';
import 'package:pokedex_app/constants/ui_helper.dart';
import 'package:pokedex_app/model/pokemon_model.dart';

class PokemonImgAndBall extends StatelessWidget {
  final PokemonModel pokemon;
  const PokemonImgAndBall({
    super.key,
    required this.pokemon,
  });

  @override
  Widget build(BuildContext context) {
    String _imagePath = 'assets/images/pokeball.png';

    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            _imagePath,
            width: UIHelper.calculatePokeImageAndBallSize(),
            height: UIHelper.calculatePokeImageAndBallSize(),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Hero(
            tag: pokemon.id!,
            child: Image.asset(
              'assets/images/pikachu.png',
              width: UIHelper.calculatePokeImageAndBallSize(),
              height: UIHelper.calculatePokeImageAndBallSize(),
            ),
          ),
        ),
      ],
    );
  }
}
