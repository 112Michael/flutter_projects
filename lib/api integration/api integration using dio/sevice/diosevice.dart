import 'package:dio/dio.dart';

class Dioservice {
  Future<dynamic> getData(String url) async {
    Dio  dio =Dio();
  return await dio.get    ( "https://jsonplaceholder.typicode.com/posts", options: Options(responseType: ResponseType.json, method: 'GET'))
        .then((response) {
      return
      response;
    });
  }
}