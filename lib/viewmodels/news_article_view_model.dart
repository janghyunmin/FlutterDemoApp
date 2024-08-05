import 'package:flutter_demo_app/models/news_article.dart';

class NewsArticleViewModel {
  NewsArticle _newsArticle;

  NewsArticleViewModel({required NewsArticle newsArticle}) : _newsArticle = newsArticle;

  String? get title {
    return _newsArticle.title;
  }

  String? get author {
    return _newsArticle.author;
  }

  String? get url {
    return _newsArticle.url;
  }

  String? get urlToImage {
    return _newsArticle.urlToImage;
  }

  String? get content {
    return _newsArticle.content;
  }

  String? get description {
    return _newsArticle.description;
  }

  String? get publishedAt {
    return _newsArticle.publishedAt;
  }
}