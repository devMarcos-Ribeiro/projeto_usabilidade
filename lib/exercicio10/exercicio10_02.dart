import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  @override
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  TextEditingController alturaController = TextEditingController();
  TextEditingController pesoController = TextEditingController();
  String resp = "";
  String status = "";

  calcular() {
    double altura = double.parse(this.alturaController.text);
    double peso = double.parse(this.pesoController.text);
    double imc = peso / pow(altura, 2);
    if (imc < 16) {
      status = "Magreza grave";
    } else if (imc < 17) {
      status = "Magreza moderada";
    } else if (imc < 18.5) {
      status = "Magreza leve";
    } else if (imc < 25) {
      status = "Saudável";
    } else if (imc < 30) {
      status = "Sobrepeso";
    } else if (imc < 35) {
      status = "Obesidade Grau I";
    } else if (imc < 40) {
      status = "Obesidade Grau II (severa)";
    } else {
      status = "Obesidade Grau III (mórbida)";
    }
    resp = '${imc.toStringAsFixed(2)}: $status';
    return resp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Página Inicial"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: alturaController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => alturaController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Informe a altura',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: pesoController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => pesoController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Informe o peso',
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(calcular);
                print(calcular());
              },
              child: Text('Calcular')),
          Text(
            this.resp,
            style: TextStyle(
              fontSize: 20,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
