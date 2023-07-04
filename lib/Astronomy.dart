import 'package:flutter/material.dart';

class Astro extends StatefulWidget {
  const Astro({super.key});

  @override
  State<Astro> createState() => _AstroState();
}

class _AstroState extends State<Astro> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black, Colors.blueGrey],
                ),),
                child: ,
      ),
    );
  }
}