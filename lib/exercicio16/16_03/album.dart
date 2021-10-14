import 'package:flutter/material.dart';
import './photos.dart';
import './descricao.dart';

class Album extends StatelessWidget {
  final List<Photo> photos;

  Album(this.photos);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Álbum'),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: <Widget>[
          ...photos.map((photo) => InkWell(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image.network(photo.urlDaImagem),
                ),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Descricao(
                        photo.titulo, photo.nomeDaCidade, photo.descricao),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
