class Photo {
  final String titulo;
  final String nomeDaCidade;
  final String descricao;
  final String urlDaImagem;

  Photo(this.titulo, this.nomeDaCidade, this.descricao, this.urlDaImagem);

  static List<Photo> getPhotos() {
    Photo newYork = Photo(
      'Nova York',
      'Nova York, EUA',
      'A cidade de Nova York compreende 5 distritos situados no encontro do rio Hudson com o Oceano Atlântico. No centro da cidade fica Manhattan, um distrito com alta densidade demográfica que está entre os principais centros comerciais, financeiros e culturais do mundo. Entre seus pontos emblemáticos, destacam-se arranha-céus, como o Empire State Building, e o enorme Central Park.',
      'https://ci-prod.imgix.net/upload/galeriadeimagens/00205891.jpg',
    );

    Photo hongKong = Photo(
      'Hong Kong',
      'Hong Kong, China',
      'Hong Kong, ex-colônia britânica, é um território autônomo no sudeste da China. Seu centro urbano vibrante e densamente povoado é também um porto importante e um centro financeiro global de destaque, com um horizonte marcado por arranha-céus.',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Hong_Kong_Harbour_Night_2019-06-11.jpg/800px-Hong_Kong_Harbour_Night_2019-06-11.jpg',
    );

    Photo londres = Photo(
      'Londres',
      'Londres, Inglaterra',
      'Londres, capital da Inglaterra e do Reino Unido, é uma cidade do século 21 com uma história que remonta à era romana. Seu centro abriga as sedes imponentes do Parlamento, a famosa torre do relógio do Big Ben e a Abadia de Westminster, local de coroação dos monarcas britânicos.',
      'https://viagemeturismo.abril.com.br/wp-content/uploads/2016/12/londres-big-ben.jpeg',
    );

    List<Photo> photos = [newYork, hongKong, londres];
    return photos;
  }
}
