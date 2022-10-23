import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_app/model/pokemon_model.dart';
import 'package:pokedex_app/services/pokedex_api.dart';
import 'package:pokedex_app/widgets/pokelist_item.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({super.key});

  @override
  State<PokemonList> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  late Future<List<PokemonModel>> _pokemonList;

  @override
  void initState() {
    super.initState();
    _pokemonList = PokeApi.fetchPokemonData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PokemonModel>>(
      future: _pokemonList,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<PokemonModel> _list = snapshot.data!;
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:
                    ScreenUtil().orientation == Orientation.portrait ? 2 : 3),
            itemBuilder: (context, index) {
              var _pokemon = _list[index];
              return PokelistItem(pokemon: _pokemon);
            },
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Hata'),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}



/*ListView.builder(
            itemCount: _list.length,
            itemBuilder: ((context, index) {
              var _pokemon = _list[index];
              return PokelistItem(pokemon: _pokemon);
            }),
          ); */