// import 'package:ecommerce/models/game.dart';
import 'package:ecommerce/models/game.dart';
import 'package:flutter/material.dart';

class DetailGame extends StatelessWidget {
  const DetailGame(
    this.game, {
    super.key,
  });

  final Game game;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(game.name),
      ),
    );
  }
}
