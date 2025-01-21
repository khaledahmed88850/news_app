
import 'package:dio/dio.dart';
import 'package:news/models/artical_model.dart';

class NewsServices {
  final Dio dio;
  NewsServices({required this.dio});

 Future <List<ArticalModel>> getnews({required String category}) async {
    try {
  Response response = await dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=110ae46a659d43e8aa92593e3f718799&category=$category');
  Map<String, dynamic> jsonData = response.data;
  List<dynamic> articles = jsonData['articles'];
  // print(articles);
  List<ArticalModel> articleList = [];
  for (var article in articles) {
    ArticalModel model = ArticalModel(
        image: article['urlToImage'],
        title: article['title'],
        subTitle: article['description']
        );
    articleList.add(model);
  }
  print(articleList);
  return articleList;
}  catch (e) {
  return [];
}
  }
} 