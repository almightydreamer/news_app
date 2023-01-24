import 'package:data/core/db/db.dart';
import 'package:data/modules/home/mapper/article_mapper.dart';
import 'package:drift/drift.dart';
import '../dto/local/article_local_dto.dart';

class LocalDataSource {
  final LocalDatabase db;

  const LocalDataSource({required this.db});

  Stream<List<ArticleLocalDTO>> retrieveArticles() async* {
    var query = db.article.select();
    query.limit(10);
    var mainStream = query
        .join([
      leftOuterJoin(db.articleCategory, db.articleCategory.id.equalsExp(db.article.categoryId)),
      leftOuterJoin(db.articleAuthor, db.articleAuthor.id.equalsExp(db.article.categoryId)),
    ])
        .watch()
        .map((rows) {
      List<ArticleLocalDTO> list = [];
      for (var row in rows) {
        ArticleData? article = row.readTableOrNull(db.article);
        ArticleCategoryData? category = row.readTableOrNull(db.articleCategory);
        ArticleAuthorData? author = row.readTableOrNull(db.articleAuthor);

        var articleDto = ArticleMapper().mapDataToLocal(article!, category!, author!, []);
        list.add(articleDto);
      }
      print('articles stored ${list.length}');
      return list;
    });
    yield* mainStream;
  }

  Future<Map<int, List<String>>> getArticleTagsById(List<int> articleIds) async {
    Map<int, List<String>> map = {};
    var query = db.articleTag.select()
      ..where((el) => el.articleId.isIn(articleIds));
    for (var element in (await query.get())) {
        map.update(element.articleId, (value) => value + [element.tag], ifAbsent: () => [element.tag]);
    }
    print(map);
    return map;
  }

Future<void> saveArticles(List<ArticleLocalDTO> articles) async {
  List<ArticleAuthorCompanion> authorList = [];
  List<ArticleCategoryCompanion> categoryList = [];
  List<ArticleTagCompanion> tagsList = [];

  List<ArticleCompanion> list = [];

  for (var e in articles) {
    var author = ArticleAuthorCompanion.insert(
        id: Value(e.author.id),
        modifiedAt: e.author.modifiedAt,
        createdAt: e.author.createdAt,
        name: e.author.name,
        avatarUrl: e.author.avatarUrl);
    authorList.add(author);
    var category = ArticleCategoryCompanion.insert(
        id: Value(e.category.id),
        modifiedAt: e.category.modifiedAt,
        createdAt: e.category.createdAt,
        title: e.category.title);
    categoryList.add(category);

    tagsList.addAll(e.tags.map((t) => ArticleTagCompanion.insert(articleId: e.id, tag: t)).toList());

    var article = ArticleCompanion.insert(
        id: Value(e.id),
        authorId: e.author.id,
        categoryId: e.category.id,
        modifiedAt: e.modifiedAt,
        createdAt: e.createdAt,
        title: e.title,
        description: e.description,
        content: e.content,
        image: e.image,
        viewsCount: e.viewsCount,
        isFeatured: e.isFeatured);
    list.add(article);
  }
  db.batch((batch) {
    batch.insertAll(db.article, list, mode: InsertMode.insertOrReplace);
    batch.insertAll(db.articleCategory, categoryList, mode: InsertMode.insertOrReplace);
    batch.insertAll(db.articleAuthor, authorList, mode: InsertMode.insertOrReplace);
    batch.insertAll(db.articleTag, tagsList, mode: InsertMode.insertOrReplace);
  });
}}
