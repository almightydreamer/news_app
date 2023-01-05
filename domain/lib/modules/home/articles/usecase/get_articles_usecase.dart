import 'package:domain/core/request/response.dart';
import 'package:domain/modules/home/articles/entity/article_entity.dart';
import 'package:domain/modules/home/articles/repository/article_repository.dart';
import 'package:either_dart/either.dart';

class GetArticlesUseCase {
  final ArticleRepository repository;

  GetArticlesUseCase(this.repository);


  Stream<Either<Failure, List<ArticleEntity>>> call(
      int pageNumber, int pageLimit) {
    print('usecasecall');
    repository.getApiArticleList(pageNumber, pageLimit).then((apiResponse) {
      print('usecase1');
      apiResponse.fold((l) {
        print('usecaseleft');
        return null;
      }, (r) {
        print('usecaseright');
        print(r.first.title);
        repository.saveArticleListToLocal(r);
      });
    });
      return repository.getLocalArticleList();
  }
}
