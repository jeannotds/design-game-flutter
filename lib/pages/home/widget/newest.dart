import 'package:ecommerce/models/game.dart';
import 'package:flutter/material.dart';

class NewstGame extends StatelessWidget {
  NewstGame({super.key});

  final List<Game> games = Game.games();

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 200,
      // color: Colors.green,
      padding: const EdgeInsets.all(20),
      child: Column(
        children: games
            .map((game) => Container(
                  // color: Colors.red,
                  // padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.only(bottom: 25),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          game.icon ?? "",
                          width: 90,
                          // height: 70,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            game.name ?? "",
                            style: const TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text(game.type ?? "",
                                      style: const TextStyle()),
                                  const Row(
                                    children: [
                                      Icon(Icons.star,
                                          size: 13,
                                          color:
                                              Color.fromARGB(255, 240, 106, 3)),
                                      Icon(Icons.star,
                                          size: 13,
                                          color:
                                              Color.fromARGB(255, 240, 106, 3)),
                                      Icon(Icons.star,
                                          size: 13,
                                          color:
                                              Color.fromARGB(255, 240, 106, 3)),
                                      Icon(Icons.star,
                                          size: 13,
                                          color:
                                              Color.fromARGB(255, 240, 106, 3))
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 5),
                                decoration: BoxDecoration(
                                    color: const Color(0xFF5F67EA),
                                    borderRadius: BorderRadius.circular(30)),
                                child: const Text(
                                  'Istall',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 11),
                                ),
                              )
                            ],
                          )
                        ],
                      ))
                    ],
                  ),
                ))
            .toList(),
      ),
    );
  }
}
