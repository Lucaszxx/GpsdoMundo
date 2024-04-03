import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'gpsdomundo_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key});
  // 1
  final String category = 'marvelous';
  final String title = 'Rio de Janeiro';
  final String description = 'A cidade maravilhosa.';
  final String tourist = 'Acabrina Boina';
  // 2
  @override
  Widget build(BuildContext context) {
    // 3
    return Center(
      // TODO: Card1 Decorate Container
      child: Container(
        // 1
        padding: const EdgeInsets.all(16),
        // 2
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        // 3
        decoration: const BoxDecoration(
          // 4
          image: DecorationImage(
            // 5
            image: NetworkImage('https://media.istockphoto.com/id/1441137601/pt/foto/sugarloaf-mountain-under-a-pink-sky.jpg?s=612x612&w=0&k=20&c=rUjdRXW8qS5yM9BhFuEsaqth4wrjECT8CHRy4UI7U-Y='),
            // 6
            fit: BoxFit.cover,
          ),
          // 7
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        // TODO: Adicione uma pilha de texto
        child: Stack(
          children: [
            // 8
          Text(
              category,
              style: GpsdoMundoTheme.darkTextTheme.bodyLarge,
          ),
          // 9
          Positioned(
            top: 20,
            child: Text(
              title,
              style: GpsdoMundoTheme.darkTextTheme.titleLarge,
            ),
          ),
          // 10
          Positioned(
            top: 370,
            right: 0,
            child: Text(
              description,
              style: GpsdoMundoTheme.darkTextTheme.bodyLarge,
            ),
          ),
          // 11
          Positioned(
            bottom: 10,
            right: 0,
            child: Text(
              tourist,
              style: GpsdoMundoTheme.darkTextTheme.bodyLarge,
           ),
          )
        ],)
      ),
    );
  }
}