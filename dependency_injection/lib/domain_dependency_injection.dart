
import 'package:domain/modules/home/articles/repository/article_repository.dart';
import 'package:domain/modules/home/articles/usecase/get_articles_usecase.dart';
import 'package:get_it/get_it.dart';

Future<void> init() async {
  final domainDi = GetIt.instance;
  print('DomainDI : initialization started');


  domainDi.registerLazySingleton<GetArticlesUseCase>(() => GetArticlesUseCase(domainDi<ArticleRepository>()));



  print('DomainDI : initialization finished');
}
