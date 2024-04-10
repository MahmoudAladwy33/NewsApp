class ArticleModel {
  final String? img;
  final String? tx1;
  final String? tx2;
  final String Url;

  ArticleModel(
      {required this.img,
      required this.tx1,
      required this.tx2,
      required this.Url});

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      img: json['urlToImage'],
      tx1: json['title'],
      tx2: json['description'],
      Url: json['url'],
    );
  }
}
