import 'package:domain/modules/home/articles/entity/article_author_entity.dart';
import 'package:domain/modules/home/articles/entity/article_category_entity.dart';

class ArticleEntity {
  final int id;
  final ArticleAuthorEntity author;
  final ArticleCategoryEntity category;
  final List<String> tags;
  final DateTime modifiedAt;
  final DateTime createdAt;
  final String title;
  final String description;
  final String content;
  final String image;
  final int viewsCount;
  final bool isFeatured;

  const ArticleEntity({
    required this.id,
    required this.author,
    required this.category,
    required this.tags,
    required this.modifiedAt,
    required this.createdAt,
    required this.title,
    required this.description,
    required this.content,
    required this.image,
    required this.viewsCount,
    required this.isFeatured,
  });
}
