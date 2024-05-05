// import 'package:ecommerce/models/game.dart';
import 'package:ecommerce/models/game.dart';
import 'package:ecommerce/pages/detail/detail.dart';
import 'package:flutter/material.dart';

class PopularGame extends StatelessWidget {
  PopularGame({super.key});

  final List<Game> games = Game.games();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          scrollDirection: Axis.horizontal,
          // GestureDetector : Permet de cliquer sur un widget en l interieur
          itemBuilder: ((context, index) => GestureDetector(
                onTap: (() => Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => DetailGame(
                            games[index],
                          )),
                    ))),
                child: Card(
                  color: const Color(0xFFF4F4F4),

                  //Properties style for card
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: ClipRRect(
                      // ClipRRect ne prend pas padding: const EdgeInsets.all(5),

                      borderRadius: BorderRadius.circular(15),

                      // Hero Pour l animation
                      child: Hero(
                          tag: games[index].name ?? "",
                          child: Image.asset(games[index]?.bgImage ?? ""))),
                ),
              )),

          // SizedBox : Permet d espacer les elements
          separatorBuilder: ((context, index) => const SizedBox(
                width: 10,
              )),
          itemCount: games.length),
    );
  }
}
