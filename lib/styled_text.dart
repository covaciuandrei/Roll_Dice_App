import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key}); //this ca sa
  //fii sigur ca o sa caute propritatea text si sa ii atribuie
  //valoarea string text = this.text primita
  //daca era String text in loc de this.text nu se mai facea atribuirea
  //const pt ca o data ce a fost initializat poate fi inceput sa fie cached si
  //reutilizat de dart
  final String text; //o sa fie atribuit o singura data cand
  //primeste val this.text si dupanu il mai modificam

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28.0,
      ),
    );
  }
}
