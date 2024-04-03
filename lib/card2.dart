import 'package:flutter/material.dart';
import 'gpsdomundo_theme.dart';
import 'author_card.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      // 1
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://a.cdn-hotels.com/gdcs/production95/d1124/49c122de-7b35-453d-83c9-ead69d9816a6.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        // 2
        child: Column(
          children: [
            // TODO: Adicionar infromações do autor
            const AuthorCard(
              authorName: 'Adam Simon',
              title: 'Software Engineer',
              imageProvider: NetworkImage(
                  'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhEBza9bzIvrATTQzIBm5qo6gDgCOnryDVz7Yv9D5Ce13sIUUCu4eACGQA5MJP_Qdqq5OAbX_0dQhUSJbTmJX6dShIjj_dPNlnxt80mT4vWeUVGzsJ3-wob1DeC_ik1FVPUPrklwmjFYolV/s1600/dicas-de-cores-pele-negra-masculina+%25284%2529.jpg'),
            ),
            // TODO: Adicionar texto posicionado
            Expanded(
              // 2
              child: Stack(
                children: [
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: Text(
                      'Rio',
                      style: GpsdoMundoTheme.lightTextTheme.displayLarge,
                    ),
                  ),
                  // 4
                  Positioned(
                    bottom: 70,
                    left: 16,
                    child: RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          'Pão de Açucar',
                          style: GpsdoMundoTheme.lightTextTheme.displayLarge,
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}