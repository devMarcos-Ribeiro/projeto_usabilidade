import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: PrimeiraRota(),
      ),
    );

class PrimeiraRota extends StatelessWidget {
  List<Photo> photos = [
    Photo(
        title: "New York, EUA",
        descricao:
            "Nova Iorque , oficialmente Cidade de Nova Iorque, é a cidade mais populosa do estado de Nova Iorque e dos Estados Unidos. Sua região metropolitana é uma das áreas metropolitanas mais populosas do mundo e é também a terceira cidade mais populosa da América, atrás de São Paulo e Cidade do México. A cidade exerce um impacto significativo sobre o comércio, finanças, mídia, arte, moda, pesquisa, tecnologia, educação e entretenimento de todo o planeta.",
        url:
            "https://images.pexels.com/photos/213781/pexels-photo-213781.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
    Photo(
        title: "Segunda Foto",
        descricao:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        url:
            "https://images.pexels.com/photos/213782/pexels-photo-213782.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
    Photo(
        title: "Terceira Foto",
        descricao:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        url:
            "https://images.pexels.com/photos/213783/pexels-photo-213783.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álbum"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            ...photos
                .map(
                  (e) => TextButton(
                    child: Image.network(e.url!),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => SegundaRota(
                                descricao: e.descricao!, title: e.title!)),
                      );
                    },
                  ),
                )
                .toList(),
          ],
        ),
      ),
    );
  }
}

class SegundaRota extends StatelessWidget {
  String? descricao;
  String? title;

  SegundaRota({this.descricao, this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title!),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(50),
              child: Text(
                this.title!,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(30),
              child: Text(
                this.descricao!,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
        backgroundColor: Colors.green,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}

class Photo {
  String? url;
  String? descricao;
  String? title;

  Photo({this.title, this.url, this.descricao});
}
