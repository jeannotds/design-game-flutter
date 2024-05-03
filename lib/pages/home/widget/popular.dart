// import 'package:ecommerce/models/game.dart';
import 'package:ecommerce/models/game.dart';
import 'package:flutter/material.dart';

class PopularGame extends StatelessWidget {
  PopularGame({super.key});

  final List<Game> games = Game.games();

  // final games = [
  //   {
  //     'bgImage': 'assets/images/ori1.jpg',
  //     'icon': 'assets/images/ori_logo.png',
  //     'name': 'Ori and the forest',
  //     'type': 'Adventure',
  //     'score': 4.8,
  //     // 382,
  //     'review': 324,
  //     'description':
  //         "Ori is stranger to peril, bu when a fateful flight puts the owlet ku in har'ms way.",
  //     'images': [
  //       'assets/images/ori2.jpg',
  //       'assets/images/ori3.jpg',
  //       'assets/images/ori4.jpg',
  //     ],
  //   },
  //   {
  //     'bgImage': 'assets/images/ori2.jpg',
  //     'icon': 'assets/images/ori2.jpg',
  //     'name': 'Ori and the forest',
  //     'type': 'Adventure',
  //     'score': 4.8,
  //     // 382,
  //     'review': 324,
  //     'description':
  //         "Ori is stranger to peril, bu when a fateful flight puts the owlet ku in har'ms way.",
  //     'images': [
  //       'assets/images/ori2.jpg',
  //       'assets/images/ori3.jpg',
  //       'assets/images/ori4.jpg',
  //     ],
  //   },
  // ];

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
                onTap: (() => print("Salut")),
                child: Card(
                  color: const Color(0xFFF4F4F4),

                  //Properties style for card
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: ClipRRect(
                      // ClipRRect ne prend pas padding: const EdgeInsets.all(5),

                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(games[index]?.bgImage ?? "")),
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
