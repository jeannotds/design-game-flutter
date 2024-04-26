import 'package:ecommerce/pages/detail/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Salut",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Ma app bar"),
            centerTitle: true,
            backgroundColor: Colors.red,
          ),
        ));
  }
}