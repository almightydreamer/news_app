import 'package:data/core/api_constants.dart';
import 'package:data/core/request_headers.dart';
import 'package:dio/dio.dart';

class ApiDataSource{

  final Dio _dio = Dio();
  var requestHeaders = RequestParameters.requestHeaders;

  Future<Response<dynamic>> getArticlesList(int pageNumber, int pageLimit) async {
    return _dio.get("${ApiConstants.articlesUrl}?size=$pageLimit&page=$pageNumber",
        options: Options(headers: requestHeaders));
  }

  Future<Response<dynamic>> getArticleCommentsList(int articleId) async {
    return _dio.get(
        "${ApiConstants.articlesUrl}/$articleId/comments",
        options: Options(headers: requestHeaders));
  }

  Future<Response<dynamic>> getArticle(int articleId) async {
    return _dio.get("${ApiConstants.articlesUrl}/$articleId",
        options: Options(headers: requestHeaders));
  }
  Future<Response<dynamic>> likeArticle(int articleId) async {
    return _dio.post("${ApiConstants.articlesUrl}/$articleId/like",
        options: Options(headers: requestHeaders));
  }

  Future<Response<dynamic>> dislikeArticle(int articleId) async {
    return _dio.post("${ApiConstants.articlesUrl}/$articleId/dislike",
        options: Options(headers: requestHeaders));
  }
}