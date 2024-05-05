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
        backgroundColor: const Color(0xFF5F67EA),
        title: Text(
          game.name,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            child: Image.asset(game.bgImage),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  game.name,
                  style: const TextStyle(
                      fontSize: 19, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  game.description,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        game.icon,
                        width: 50,
                        height: 50,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Text(game.type),
                        const Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 12,
                              color: Color.fromARGB(255, 240, 106, 3),
                            ),
                            Icon(
                              Icons.star,
                              size: 12,
                              color: Color.fromARGB(255, 240, 106, 3),
                            ),
                            Icon(
                              Icons.star,
                              size: 12,
                              color: Color.fromARGB(255, 240, 106, 3),
                            ),
                            Icon(
                              Icons.star,
                              size: 12,
                              color: Color.fromARGB(255, 240, 106, 3),
                            ),
                            Icon(
                              Icons.star,
                              size: 12,
                              color: Color.fromARGB(255, 240, 106, 3),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                )
                // Column(
                //   children: [game.images.map((img) => Image.asset(img))],
                // )
              ],
            ),
          )
        ],
      ),
    );
  }
}
