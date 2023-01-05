import 'package:data/core/db/db.dart';
import 'package:data/modules/home/dto/api/article_api_dto.dart';
import 'package:data/modules/home/dto/local/article_author_local_dto.dart';
import 'package:data/modules/home/dto/local/article_category_local_dto.dart';
import 'package:data/modules/home/dto/local/article_local_dto.dart';
import 'package:domain/modules/home/articles/entity/article_author_entity.dart';
import 'package:domain/modules/home/articles/entity/article_category_entity.dart';
import 'package:domain/modules/home/articles/entity/article_entity.dart';

class ArticleMapper {
  ArticleEntity mapApiToEntity(ArticleApiDTO input) {
    ArticleAuthorEntity authorEntity = ArticleAuthorEntity(
      id: input.id,
      modifiedAt: input.author.modifiedAt,
      createdAt: input.author.createdAt,
      name: input.author.name,
      avatarUrl: input.author.avatarUrl,
    );
    ArticleCategoryEntity categoryEntity = ArticleCategoryEntity(
      id: input.id,
      modifiedAt: input.category.modifiedAt,
      createdAt: input.category.createdAt,
      title: input.category.title,
    );
    return ArticleEntity(
        id: input.id,
        author: authorEntity,
        category: categoryEntity,
        tags: input.tags,
        modifiedAt: input.modifiedAt,
        createdAt: input.createdAt,
        title: input.title,
        description: input.description,
        content: input.content,
        image: input.image,
        viewsCount: input.viewsCount,
        isFeatured: input.isFeatured);
  }

  ArticleLocalDTO mapDataToLocal(ArticleData article, ArticleCategoryData category, ArticleAuthorData author,
      List<ArticleTagData> tags) {
    ArticleAuthorLocalDTO authorLocalDTO = ArticleAuthorLocalDTO(
        id: author.id,
        modifiedAt: author.modifiedAt,
        createdAt: author.createdAt,
        name: author.name,
        avatarUrl: author.avatarUrl);
    ArticleCategoryLocalDTO categoryLocalDTO = ArticleCategoryLocalDTO(
      id: category.id,
      modifiedAt: category.modifiedAt,
      createdAt: category.createdAt,
      title: category.title,
    );
    List<String> tagsList = [];
    tags.map((e) => tagsList.add(e.tag));
    return ArticleLocalDTO(
        id: article.id,
        author: authorLocalDTO,
        category: categoryLocalDTO,
        tags: tagsList,
        modifiedAt: article.modifiedAt,
        createdAt: article.createdAt,
        title: article.title,
        description: article.description,
        content: article.content,
        image: article.image,
        viewsCount: article.viewsCount,
        isFeatured: article.isFeatured);
  }

  ArticleEntity mapLocalToEntity(ArticleLocalDTO input) {

    ArticleAuthorEntity authorEntity = ArticleAuthorEntity(id: input.author.id,
        modifiedAt: input.author.modifiedAt,
        createdAt: input.author.createdAt,
        name: input.author.name,
        avatarUrl: input.author.avatarUrl);

    ArticleCategoryEntity categoryEntity = ArticleCategoryEntity(id: input.category.id,
        modifiedAt: input.category.modifiedAt,
        createdAt: input.category.createdAt,
        title: input.category.title);

    return ArticleEntity(
        id: input.id,
        author: authorEntity,
        category: categoryEntity,
        tags: input.tags,
        modifiedAt: input.modifiedAt,
        createdAt: input.createdAt,
        title: input.title,
        description: input.description,
        content: input.content,
        image: input.image,
        viewsCount: input.viewsCount,
        isFeatured: input.isFeatured);
  }

  ArticleLocalDTO mapEntityToLocal(ArticleEntity input) {

    ArticleAuthorLocalDTO authorLocalDTO = ArticleAuthorLocalDTO(id: input.author.id,
        modifiedAt: input.author.modifiedAt,
        createdAt: input.author.createdAt,
        name: input.author.name,
        avatarUrl: input.author.avatarUrl);

    ArticleCategoryLocalDTO categoryLocalDTO = ArticleCategoryLocalDTO(id: input.category.id,
        modifiedAt: input.category.modifiedAt,
        createdAt: input.category.createdAt,
        title: input.category.title);

    return ArticleLocalDTO(
        id: input.id,
        author: authorLocalDTO,
        category: categoryLocalDTO,
        tags: input.tags,
        modifiedAt: input.modifiedAt,
        createdAt: input.createdAt,
        title: input.title,
        description: input.description,
        content: input.content,
        image: input.image,
        viewsCount: input.viewsCount,
        isFeatured: input.isFeatured);
  }
}
