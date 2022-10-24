import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_app/constants/ui_helper.dart';
import 'package:pokedex_app/model/pokemon_model.dart';
import 'package:pokedex_app/widgets/poke_type_name.dart';
import 'package:pokedex_app/widgets/pokemon_information.dart';

class DetailsPage extends StatelessWidget {
  final PokemonModel pokemon;
  const DetailsPage({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    final String _pokebolUrl = 'assets/images/pokeball.png';
    return ScreenUtil().orientation == Orientation.portrait
        ? _buildPortraitBody(context, _pokebolUrl)
        : _buildLandscapeBody(context, _pokebolUrl);
  }

  Scaffold _buildPortraitBody(BuildContext context, String _pokebolUrl) {
    return Scaffold(
      backgroundColor: UIHelper.getColorFromType(pokemon.type![0]),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: UIHelper.getdefaultPadding(),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.chevron_left,
                size: UIHelper.getIconSize(),
              ),
            ),
          ),
          PokemonTypeName(
            pokemon: pokemon,
          ),
          SizedBox(
            height: 15.h,
          ),
          Expanded(
              child: Stack(
            children: [
              Positioned(
                child: Image.asset(
                  _pokebolUrl,
                  fit: BoxFit.fitHeight,
                  height: 0.15.sh,
                ),
                right: 0,
                top: 0,
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                top: 0.12.sh,
                child: PokemonInformation(pokemon: pokemon),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Hero(
                  tag: pokemon.id!,
                  child: Image.asset(
                    'assets/images/pikachu.png',
                    height: 0.20.sh,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              )
            ],
          )),
        ],
      )),
    );
  }

  Scaffold _buildLandscapeBody(BuildContext context, String _pokebolUrl) {
    return Scaffold(
      backgroundColor: UIHelper.getColorFromType(pokemon.type![0]),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: UIHelper.getdefaultPadding(),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.chevron_left,
                  size: UIHelper.getIconSize(),
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PokemonTypeName(pokemon: pokemon),
                        Hero(
                          tag: pokemon.id!,
                          child: Image.asset(
                            'assets/images/pikachu.png',
                            height: 0.20.sw,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: PokemonInformation(pokemon: pokemon),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
