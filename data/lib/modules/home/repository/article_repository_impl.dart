import 'dart:io';
import 'dart:math';
import 'package:data/modules/home/dto/api/article_page_api_dto.dart';
import 'package:domain/core/request/response.dart';
import 'package:domain/modules/home/articles/entity/article_entity.dart';
import 'package:domain/modules/home/articles/repository/article_repository.dart';
import 'package:either_dart/either.dart';
import '../datasource/api_datasource.dart';
import '../datasource/local_datasource.dart';
import '../mapper/article_mapper.dart';
import 'package:collection/collection.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  late ApiDataSource _apiDataSource;
  late LocalDataSource _localDataSource;

  ArticleRepositoryImpl({required ApiDataSource apiDataSource, required LocalDataSource localDataSource}) {
    _apiDataSource = apiDataSource;
    _localDataSource = localDataSource;
  }

  @override
  Future<Either<Failure, List<ArticleEntity>>> getApiArticleList(int pageNumber, int pageLimit) async {
    try {
      var response = await _apiDataSource.getArticlesList(pageNumber, pageLimit);
      if (response.statusCode != HttpStatus.ok) {
        return Left(ApiFailure(response.data, StackTrace.current));
      }

      ArticlePageApiDTO articlesPageApiDTO = ArticlePageApiDTO.fromJson(response.data);
      var entities = articlesPageApiDTO.results.map((e) => ArticleMapper().mapApiToEntity(e)).toList();
      return Right(entities);
    } catch (e, s) {
      return Left(OtherFailure(e, s));
    }
  }

  @override
  Stream<Either<Failure, List<ArticleEntity>>> getLocalArticleList() async* {
    try {
      /*  print('asd1');
      var articlesStream = _localDataSource.retrieveArticles();
      print('asd2');
      List<ArticleEntity> entityList = [];
      articlesStream.listen((articles) {
        var list = articles.map((e) => ArticleMapper().mapLocalToEntity(e)).toList();
        entityList.addAll(list);
      });
      print('asd3');*/
      yield* (_localDataSource.retrieveArticles().asyncMap((event) async {
        var mapArticleTags = await _localDataSource.getArticleTagsById(event.map((e) => e.id).toList());
        print(mapArticleTags);
        event.forEachIndexed((index, element) {

          element.tags = mapArticleTags.containsKey(element.id) ? mapArticleTags[element.id]! : [];
        });
        var articles = event.map((e) => ArticleMapper().mapLocalToEntity(e)).toList();
        return Right(articles);
      }));
    } catch (e, s) {
      print('$e\n\n$s');
      yield Left(OtherFailure(e, s));
    }
  }

  @override
  Future<Either<Failure, void>> saveArticleListToLocal(List<ArticleEntity> list) async {
    try {
      var articles = list.map((e) => ArticleMapper().mapEntityToLocal(e)).toList();
      await _localDataSource.saveArticles(articles);
      return Right(null);
    } catch (e, s) {
      return Left(OtherFailure(e, s));
    }
  }

  @override
  Future<Either<Failure, void>> likeArticle(int articleId) async {
    try {
      var response = await _apiDataSource.likeArticle(articleId);
      if (response.statusCode != HttpStatus.created) {
        return Left(ApiFailure(response.data, StackTrace.current));
      }
      return Right(null);
    } catch (e, s) {
      return Left(OtherFailure(e, s));
    }
  }

  @override
  Future<Either<Failure, void>> dislikeArticle(int articleId) async {
    try {
      var response = await _apiDataSource.dislikeArticle(articleId);
      if (response.statusCode != HttpStatus.created) {
        return Left(ApiFailure(response.data, StackTrace.current));
      }
      return Right(null);
    } catch (e, s) {
      return Left(OtherFailure(e, s));
    }
  }

// @override
// Future<Either<Failure, void>> getApiArticle(int articleId) {}
//
// @override
// Future<Either<Failure, void>> getApiArticleCommentList(int articleId) async {
//   try {
//     var response = await _apiDataSource.getArticleCommentsList(articleId);
//     if (response.statusCode != HttpStatus.ok) {
//       return Left(ApiFailure(response.data, StackTrace.current));
//     }
//
//     return Right(null);
//   } catch (e, s) {
//     return Left(OtherFailure(e, s));
//   }
// }
}
