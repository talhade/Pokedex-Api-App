import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_app/constants/constants.dart';
import 'package:pokedex_app/constants/ui_helper.dart';
import 'package:pokedex_app/model/pokemon_model.dart';
import 'package:pokedex_app/screens/details_page.dart';
import 'package:pokedex_app/widgets/poke_img_and_ball.dart';

class PokelistItem extends StatelessWidget {
  final PokemonModel pokemon;
  const PokelistItem({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => DetailsPage(pokemon: pokemon),
      )),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.w),
        ),
        elevation: 3,
        shadowColor: Colors.white,
        color: UIHelper.getColorFromType(pokemon.type![0]),
        child: Padding(
          padding: UIHelper.getdefaultPadding(),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  pokemon.name ?? 'N/A',
                  style: Constants.PokemonNameStyle(),
                ),
                Chip(
                  label: Text(
                    pokemon.type![0].toString(),
                    style: Constants.PokemonTypeStyle(),
                  ),
                ),
                Expanded(child: PokemonImgAndBall(pokemon: pokemon))
              ]),
        ),
      ),
    );
  }
}
