import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (_) => PrimeiraTela(),
          '/segunda': (_) => SegundaTela(),
          '/terceira': (_) => TerceiraTela(),
          '/quarta': (_) => QuartaTela(),
        },
      ),
    );

class PrimeiraTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Tela('Primeira tela', Corpo('1'), Botao('segunda'));
  }
}

class SegundaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Tela('Segunda tela', Corpo('2'), Botoes('terceira'));
  }
}

class TerceiraTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Tela('Terceira tela', Corpo('3'), Botoes('quarta'));
  }
}

class QuartaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Tela('Quarta tela', Corpo('4'), Botoes('segunda'));
  }
}

class Corpo extends StatelessWidget {
  final String texto;

  Corpo(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '$texto',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 45,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.green,
      ),
      padding: EdgeInsets.all(40),
      margin: EdgeInsets.all(25),
    );
  }
}

class Botoes extends StatelessWidget {
  final String proxima;

  Botoes(this.proxima);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          child: Icon(Icons.navigate_before),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        ElevatedButton(
          child: Icon(Icons.navigate_next),
          onPressed: () {
            Navigator.pushNamed(context, '/$proxima');
          },
        ),
      ],
    );
  }
}

class Botao extends StatelessWidget {
  final String proxima;

  Botao(this.proxima);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Icon(Icons.navigate_next),
      onPressed: () {
        Navigator.pushNamed(context, '/$proxima');
      },
    );
  }
}

class Tela extends StatelessWidget {
  final String titulo;
  final Widget corpo, navegacao;

  Tela(this.titulo, this.corpo, this.navegacao);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.titulo),
      ),
      body: Center(
        child: Column(
          children: [
            corpo,
            navegacao,
          ],
        ),
      ),
    );
  }
}
