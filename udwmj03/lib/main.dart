import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

class Home extends StatelessWidget {
  final String nome = "Ana";
  final String dia = "quinta-feira!";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildRichText(),
            buildDescriptionText(),
            buildThanksRichText(),
          ],
        ),
      ),
    );
  }

  Widget buildDescriptionText() {
    return Container(
      margin: const EdgeInsets.only(top: 48.0, left: 16, right: 16),
      child: Text(
        'Hoje, você terá que escrever um aplictivo em Flutter. O aplicativo deve imprimir um texto na tela. O texto possui trechos com estilos diferentes.',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 16, color: Colors.white, decoration: TextDecoration.none),
      ),
    );
  }

  Widget buildThanksRichText() {
    return Container(
      margin: const EdgeInsets.only(top: 48.0, left: 16, right: 16),
      child: RichText(
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
        text: TextSpan(
          style: TextStyle(
            fontSize: 16,
          ),
          children: <TextSpan>[
            TextSpan(
              text: 'Boa prática!\n',
              style: TextStyle(color: Colors.purple),
            ),
            TextSpan(
              text: '=',
              style: TextStyle(color: Colors.yellow),
            ),
            TextSpan(
              text: 'D',
              style: TextStyle(color: Colors.red),
            ),
            TextSpan(
              text: 'H',
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRichText() {
    return RichText(
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
      text: TextSpan(
        style: TextStyle(
          color: Colors.green,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          backgroundColor: Colors.white,
        ),
        children: <TextSpan>[
          buildSimpleTextSpan('Olá, '),
          buildNameTextSpan(),
          buildSimpleTextSpan('!'),
          buildDayTextSpan(),
          buildSimpleTextSpan('\nBom dia!'),
        ],
      ),
    );
  }

  TextSpan buildSimpleTextSpan(String text) {
    return TextSpan(
      text: text,
    );
  }

  TextSpan buildNameTextSpan() {
    return TextSpan(
      text: '$nome',
      style: TextStyle(
        color: Colors.blue,
        decoration: TextDecoration.underline,
        decorationColor: Colors.red,
        decorationStyle: TextDecorationStyle.dotted,
        backgroundColor: Colors.green,
      ),
    );
  }

  TextSpan buildExclamationTextSpan() {
    return TextSpan(
      text: '$nome',
      style: TextStyle(
        color: Colors.blue,
        decoration: TextDecoration.underline,
        decorationColor: Colors.red,
        decorationStyle: TextDecorationStyle.dotted,
        backgroundColor: Colors.green,
      ),
    );
  }

  TextSpan buildDayTextSpan() {
    return TextSpan(
      text: '\nHoje é $dia',
      style: TextStyle(
        color: Colors.red,
        decorationColor: Colors.red,
        decorationStyle: TextDecorationStyle.double,
        backgroundColor: Colors.yellow,
      ),
    );
  }
}
