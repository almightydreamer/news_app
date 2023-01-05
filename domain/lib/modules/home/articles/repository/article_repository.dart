import 'package:domain/core/request/response.dart';
import 'package:domain/modules/home/articles/entity/article_entity.dart';
import 'package:either_dart/either.dart';

abstract class ArticleRepository {
  Future<Either<Failure, List<ArticleEntity>>> getApiArticleList(int pageNumber, int pageLimit);
  Stream<Either<Failure, List<ArticleEntity>>> getLocalArticleList();
  Future<Either<Failure, void>> saveArticleListToLocal(List<ArticleEntity> list);
  Future<Either<Failure, void>> likeArticle(int articleId);
  Future<Either<Failure, void>> dislikeArticle(int articleId);
  // Future<Either<Failure, void>> getApiArticle(int articleId);
  // Future<Either<Failure, void>> getApiArticleCommentList(int articleId);

}