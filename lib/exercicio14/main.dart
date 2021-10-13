import 'package:flutter/material.dart';
import 'package:projeto_usabilidade/exercicio14/rota/rotas.dart';

void main() => runApp(
      MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => PrimeiraTela(),
          '/segunda': (context) => SegundaTela(),
          '/terceira': (context) => TerceiraTela(),
        },
      ),
    );
