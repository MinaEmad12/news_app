import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/features/home/model/news_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
class ServiceApi {
  final Dio dio;
  String baseurl = 'https://newsapi.org/v2';
  String apiKey = dotenv.env['API_KEY'] ?? '';
  ServiceApi({required this.dio});
  Future<List<NewsModel>> getDataApi({String category='general'}) async {
    try {
      Response response = await dio.get(
          '$baseurl/top-headlines?country=us&category=$category&apiKey=$apiKey');
      Map<String, dynamic> mapJsonData = response.data;
      List<dynamic> listJsonData = mapJsonData['articles'];
      List<NewsModel> listAddJsonData = [];
      for (Map<String, dynamic> listJson in listJsonData) {
        NewsModel newsModel = NewsModel(
            imagesNew: listJson['urlToImage'],
            titleNew: listJson['title'],
            subTitleNew: listJson['description']);
        listAddJsonData.add(newsModel);
      }
      
      return listAddJsonData;

    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
