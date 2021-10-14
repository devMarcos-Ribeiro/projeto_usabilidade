import 'package:flutter/material.dart';

class SegundaRota extends StatelessWidget {
  final Mensagem mensagem;

  SegundaRota(this.mensagem);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Rota'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              '${mensagem.titulo}',
              style: TextStyle(
                fontSize: 40,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${mensagem.texto}',
              style: TextStyle(
                fontSize: 25,
                color: Colors.blue,
              ),
            ),
            ElevatedButton(
              child: Text('Ir para a Primeira Rota'),
              onPressed: () {
                Navigator.pop(context);
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

class PrimeiraRotaState extends State<PrimeiraRota> {
  TextEditingController num01Controller = TextEditingController();
  TextEditingController num02Controller = TextEditingController();
  String resp = '';

  construirMensagem(Preco preco) {
    Mensagem mensagem = Mensagem();
    double number = preco.etanol / preco.gasolina;

    number < 0.7
        ? mensagem.texto = "Abasteça com Etanol"
        : mensagem.texto = "Abasteça com Gasolina";
    mensagem.titulo = '${preco.etanol} / ${preco.gasolina} = ${preco.razao()}';
    resp = mensagem.texto!;
    return mensagem;
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
                labelText: 'Informe o preço do Etanol',
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
                labelText: 'Informe o preço da Gasolina',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              double num01 = double.parse(this.num01Controller.text);
              double num02 = double.parse(this.num02Controller.text);
              Preco preco = Preco(num01, num02);
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            SegundaRota(construirMensagem(preco))));
              });
            },
            child: Text('Voltar para a Primeira Rota'),
          ),
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

class Mensagem {
  String? titulo;
  String? texto;
  Mensagem({this.titulo, this.texto});
}

class Preco {
  double etanol;
  double gasolina;
  Preco(this.etanol, this.gasolina);
  razao() => etanol / gasolina;
}
