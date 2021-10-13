import 'package:flutter/material.dart';

class PrimeiraRotaState extends State<PrimeiraRota> {
  String mensagem = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeira Rota'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              '$mensagem',
              style: TextStyle(
                fontSize: 40,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              child: Text('Ir para a Segunda Rota'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SegundaRota()),
                ).then((resposta) {
                  setState(() {
                    mensagem = resposta;
                  });
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PrimeiraRota extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PrimeiraRotaState();
  }
}

class SegundaRota extends StatelessWidget {
  TextEditingController num01Controller = TextEditingController();
  TextEditingController num02Controller = TextEditingController();

  somar(num01, num02) {
    return '$num01 + $num02 = ${num01 + num02}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda Rota"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: num01Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => num01Controller.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Informe o primeiro número',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: num02Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => num02Controller.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Informe o segundo número',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(
                  context,
                  somar(int.parse(this.num01Controller.text),
                      int.parse(this.num02Controller.text)));
            },
            child: Text('Voltar para a Primeira Rota'),
          ),
        ],
      ),
    );
  }
}
