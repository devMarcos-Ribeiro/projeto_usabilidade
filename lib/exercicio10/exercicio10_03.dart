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
  TextEditingController comprimentoController = TextEditingController();
  TextEditingController larguraController = TextEditingController();

  String resp = "";
  String status = "";

  calcular() {
    double altura = double.parse(this.alturaController.text);
    double comprimento = double.parse(this.comprimentoController.text);
    double largura = double.parse(this.larguraController.text);

    resp = 'Volume: ${(comprimento * altura * largura).toStringAsFixed(2)}';
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
              controller: comprimentoController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => comprimentoController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Informe o comprimento',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: larguraController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => larguraController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Informe a largura',
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
