import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5F67EA),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.red,
              height: 300,
            ),
            Container(
              color: Colors.green,
              height: 300,
            ),
            Container(
              color: Colors.yellow,
              height: 300,
            )
          ],
        ),
      ),
    );
  }
}
