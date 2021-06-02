import 'package:aula8_camp/models/pokemon_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  List<PokemonModel> pokemons;

  HomePage(this.pokemons);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  get pokemons => widget.pokemons;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home page'),
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      child: ListView.builder(
        itemCount: pokemons.length,
        itemBuilder: (context, index) {
          PokemonModel item = pokemons[index];

          return ListTile(
            title: Text(item.name),
            leading: Image.network(item.imageUrl),
            subtitle: Text(
              '#${item.id.toString().padLeft(3, '0')}',
            ),
          );
        },
      ),
    );
  }
}
