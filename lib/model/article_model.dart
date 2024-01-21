// import 'package:news_app_2110020079/model/source_model.dart';
// class Article {
// Source source;
// String author;
// String title;
// String description;
// String url;
// String urlToImage;
// String publishedAt;
// String content;
// Article(
// {
// required this.source, required this .author, required this .title, required this.description,
// required this.url, required this .urlToImage, required this .publishedAt, required this .content
// }
// );
// factory Article.fromJson(Map<String, dynamic> json) {
// return Article(
// source: Source.fromJson(json['source']),
// author: json['author'] as String,
// title: json['title'] as String,
// description: json['description'] as String,url: json['url'] as String,
// urlToImage: json['urlToImage'] as String,
// publishedAt: json['publishedAt'] as String,
// content: json['content'] as String,
// );
// }
// }


import 'source_model.dart';

class Article {
  Source source;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;

  Article({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      source: Source.fromJson(json['source'] ?? {}),
      author: json['author'] as String? ?? '',
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      url: json['url'] as String? ?? '',
      urlToImage: json['urlToImage'] as String? ??
          'https://static.vecteezy.com/system/resources/previews/004/141/669/original/no-photo-or-blank-image-icon-loading-images-or-missing-image-mark-image-not-available-or-image-coming-soon-sign-simple-nature-silhouette-in-frame-isolated-illustration-vector.jpg',
      publishedAt: json['publishedAt'] as String? ?? '',
      content: json['content'] as String? ?? '',
    );
  }
}