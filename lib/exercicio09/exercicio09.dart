import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  int numeroVezes = 0;
  String mensagem =
      "Número de vezes em que o botão foi pressionado: 0.\nEste número é par.";

  void cliqueDoBotao() {
    String tipoNumero = "";
    numeroVezes++;
    if (numeroVezes % 2 == 0) {
      tipoNumero = "par";
    } else {
      tipoNumero = "ímpar";
    }
    mensagem =
        "Número de vezes em que o botão foi pressionado: $numeroVezes.\nEste número é $tipoNumero";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Página inicial"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(mensagem)],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(cliqueDoBotao);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
