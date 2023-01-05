import 'package:data/core/db/db.dart';
import 'package:data/modules/home/datasource/api_datasource.dart';
import 'package:data/modules/home/datasource/local_datasource.dart';
import 'package:data/modules/home/repository/article_repository_impl.dart';
import 'package:domain/modules/home/articles/repository/article_repository.dart';

import 'package:get_it/get_it.dart';

Future<void> init() async {
  final dataDi = GetIt.instance;
  print('DataDI : initialization started');

  dataDi.registerLazySingleton<LocalDatabase>(() => LocalDatabase());

  dataDi.registerLazySingleton<LocalDataSource>(() => LocalDataSource(db: dataDi<LocalDatabase>()));

  dataDi.registerLazySingleton<ApiDataSource>(() => ApiDataSource());

  dataDi.registerLazySingleton<ArticleRepository>(
      () => ArticleRepositoryImpl(apiDataSource: dataDi<ApiDataSource>(), localDataSource: dataDi<LocalDataSource>()));

  print('DataDI : initialization finished');
}
