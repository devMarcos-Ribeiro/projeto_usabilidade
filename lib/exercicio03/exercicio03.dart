import 'package:flutter/material.dart';

void main() {
  String nome = 'Marcos';

  runApp(
    Center(
      child: RichText(
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
        text: TextSpan(
          text: 'Olá, ',
          style: TextStyle(
            color: Colors.green,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.white,
          ),
          children: <TextSpan>[
            TextSpan(
              text: '$nome',
              style: TextStyle(
                backgroundColor: Colors.green,
                color: Colors.blue,
                decoration: TextDecoration.underline,
                decorationColor: Colors.red,
                decorationStyle: TextDecorationStyle.double,
              ),
            ),
            TextSpan(
              text: '!',
            ),
            TextSpan(
              text: '\nHoje é quinta feira',
              style: TextStyle(
                backgroundColor: Colors.yellow,
                color: Colors.red,
              ),
            ),
            TextSpan(
              text: '\nBom dia!',
              style: TextStyle(
                color: Colors.green,
              ),
            ),
            TextSpan(
              text:
                  '\n\n\nHoje, você terá que escrever um aplicativo em Flutter. O aplicativo deve imprimir um texto na tela. O texto possui trechos com estilos diferentes.',
              style: TextStyle(
                backgroundColor: Colors.black,
                color: Colors.white,
                decoration: null,
                decorationColor: null,
                decorationStyle: null,
                fontSize: 17.5,
                fontWeight: FontWeight.normal,
              ),
            ),
            TextSpan(
              text: '\n\nBoa prática!',
              style: TextStyle(
                backgroundColor: Colors.black,
                color: Colors.purple,
                decoration: null,
                decorationColor: null,
                decorationStyle: null,
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: '\n\n=',
              style: TextStyle(
                backgroundColor: Colors.black,
                color: Colors.green,
                decoration: null,
                decorationColor: null,
                decorationStyle: null,
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: 'D',
              style: TextStyle(
                backgroundColor: Colors.black,
                color: Colors.red,
                decoration: null,
                decorationColor: null,
                decorationStyle: null,
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: 'H',
              style: TextStyle(
                backgroundColor: Colors.black,
                color: Colors.white,
                decoration: null,
                decorationColor: null,
                decorationStyle: null,
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
