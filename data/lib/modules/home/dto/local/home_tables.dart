import 'package:drift/drift.dart';

class Article extends Table {

  IntColumn get id => integer()();

  IntColumn get authorId => integer()();

  IntColumn get categoryId => integer()();

  DateTimeColumn get modifiedAt  => dateTime()();

  DateTimeColumn get createdAt => dateTime()();

  TextColumn get title => text()();

  TextColumn get description => text()();

  TextColumn get content => text()();

  TextColumn get image => text()();

  IntColumn get viewsCount => integer()();

  BoolColumn get isFeatured => boolean()();

  @override
  Set<Column> get primaryKey => {id};
}

class ArticleAuthor extends Table {
  IntColumn get id => integer()();

  DateTimeColumn get modifiedAt => dateTime()();

  DateTimeColumn get createdAt => dateTime()();

  TextColumn get name => text()();

  TextColumn get avatarUrl => text()();

  @override
  Set<Column> get primaryKey => {id};
}


class ArticleCategory extends Table {
  IntColumn get id => integer()();

  DateTimeColumn get modifiedAt => dateTime()();

  DateTimeColumn get createdAt => dateTime()();

  TextColumn get title => text()();

  @override
  Set<Column> get primaryKey => {id};
}

class ArticleTag extends Table {

  IntColumn get articleId => integer()();

  TextColumn get tag => text()();

  @override
  Set<Column> get primaryKey => {articleId, tag};
}