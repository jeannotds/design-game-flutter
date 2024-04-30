import 'package:flutter/material.dart';

class SearchSelection extends StatelessWidget {
  const SearchSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      // height: 300,
      padding:
          const EdgeInsetsDirectional.symmetric(horizontal: 10, vertical: 30),
      child: Stack(
        children: [
          TextField(
            decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular((10)),
                  borderSide: const BorderSide(
                    color: Colors.black,
                    width: 0,
                  ),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                prefixIcon: const Icon(
                  Icons.search_outlined,
                  size: 30,
                  // color: Colors.red.withOpacity(0.7),
                ),
                //Placeholder
                hintText: 'Search game',
                //Change color of Placeholder
                hintStyle: TextStyle(
                  color: Colors.grey.withOpacity(0.7),
                )),
          ),
          Positioned(
              //positionner l element à droite
              top: 10,
              right: 12,
              child: Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFF5F67EA)),
                child: const Icon(
                  Icons.mic_outlined,
                  color: Colors.white,
                  size: 25,
                ),
              ))
        ],
      ),
    );
  }
}
