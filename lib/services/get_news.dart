import 'package:dio/dio.dart';
import 'package:newsapp/models/news_model.dart';

class NewsServices {
  final Dio dio = Dio();

  Future<List<NewsModel>> getNews({required String category}) async {
    try {
      final response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apiKey=478ef1de911d4ebe93adf7b5c29da65a&country=us&category=$category');
      final Map<String, dynamic> jsondata = response.data;
      final List articles = jsondata['articles'];
      final List<NewsModel> newsList = [];
      for (var article in articles) {
        NewsModel newsModel = NewsModel.fromJson(article);
        newsList.add(newsModel);
      }
      return newsList;
    } catch (e) {
      return [];
    }
  }
}
