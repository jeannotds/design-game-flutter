import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 200,  // color: Colors.red,

      // Permet d eviter que l element soit top de l ecran soit colé de top de l ecran
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top, left: 15, right: 15),
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween, //permet de decaler les elements
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment
                .start, // permet de decaler les elements en au debut
            children: [
              Text(
                "Welcome",
                // TextStyle Permet de manipuler le texte
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "What would you like to do play ?",
                style: TextStyle(color: Colors.white, fontSize: 19),
              )
            ],
          ),
          CircleAvatar(
            child: Image.asset(
              'assets/images/avatar.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
