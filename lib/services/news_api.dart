import 'package:dio/dio.dart';
import 'package:flutter_demo_app/models/news_article.dart';

class NewsAPI {
  var dio = Dio();

  Future<List<NewsArticle>> fetchArticle() async {
    String url =
        "https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=7308779952f347a798fcaffd8fee2eb9";

    final response = await dio.get(url);

    if (response.statusCode == 200) {
      final result = response.data;
      Iterable list = result['articles'];
      return list.map((item) => NewsArticle.fromJson(item)).toList();
    } else {
      throw Exception("failed to get top news");
    }
  }
}