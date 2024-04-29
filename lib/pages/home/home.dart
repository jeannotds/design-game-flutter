import 'package:ecommerce/pages/home/widget/header.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5F67EA),
      body: (SingleChildScrollView(
        // Stack : Permet de superposer des elements
        child: Stack(
          children: [
            Transform(
                origin: const Offset(150, 50),
                transform: Matrix4.identity()..rotateZ(20),
                child: Image.asset(
                  'assets/images/bg_liquid.png',
                  width: 200,
                )),
            Positioned(
                right: 0,
                top: 200,
                child: Transform(
                  origin: const Offset(150, 100),
                  transform: Matrix4.identity()..rotateZ(20),
                  child: Image.asset(
                    'assets/images/bg_liquid.png',
                    width: 200,
                  ),
                )),
            const Column(
              children: [
                HeaderSection(),
              ],
            )
          ],
        ),
      )),
      bottomNavigationBar: NavigationBar(),
    );
  }

  // Widget NavigationBar() {
  //   return BottomNavigationBar(
  //     type: BottomNavigationBarType.fixed,
  //     items: [
  //       BottomNavigationBarItem(
  //         label: 'homes',
  //         icon: Icon(Icons.home),
  //       ),
  //       BottomNavigationBarItem(
  //         label: 'home',
  //         icon: Icon(Icons.home),
  //       ),
  //       BottomNavigationBarItem(
  //         label: 'home',
  //         icon: Icon(Icons.home),
  //       ),
  //       BottomNavigationBarItem(
  //         label: 'home',
  //         icon: Icon(Icons.home),
  //       ),
  //       BottomNavigationBarItem(
  //         label: 'home',
  //         icon: Icon(Icons.home),
  //       ),
  //     ],
  //   );
  // }

  Widget NavigationBar() {
    return Container(
      color: const Color(0xfff6f8ff),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            selectedItemColor: const Color(0xFF5F67EA),
            selectedFontSize: 12,
            unselectedFontSize: 12,
            unselectedItemColor: Colors.grey.withOpacity(0.7),
            type: BottomNavigationBarType.fixed,
            items: [
              const BottomNavigationBarItem(
                label: 'home',
                icon: Icon(
                  Icons.home_rounded,
                  size: 50,
                ),
              ),
              BottomNavigationBarItem(
                label: "Application",
                icon: Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.more_horiz_outlined,
                    size: 30,
                    color: Colors.grey,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: "Film",
                icon: Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.play_arrow_rounded,
                    size: 30,
                    color: Colors.grey,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: "Book",
                icon: Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.auto_stories_rounded,
                    size: 30,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
