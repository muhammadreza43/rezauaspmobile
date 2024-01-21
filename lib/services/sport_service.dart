import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_app_2110020079/model/article_model.dart';

class ApiService {
  final endPointUrl = "newsapi.org";

  Future<List<Article>> getArticle() async {
    final queryParameters = {
      'country': 'id',
      'category': 'sports',
      'apiKey': 'a2f38b714f4748619f6bc8f36239f497'
    };

    final uri = Uri.https(endPointUrl, '/v2/top-headlines', queryParameters);
    final response = await http.get(uri);

    Map<String, dynamic> json = jsonDecode(response.body);

    List<dynamic> body = json['articles'];

    List<Article> articles =
        body.map((dynamic item) => Article.fromJson(item)).toList();

    return articles;
  }
}
