import 'package:data/modules/home/dto/local/article_author_local_dto.dart';
import 'package:data/modules/home/dto/local/article_category_local_dto.dart';

class ArticleLocalDTO {
  final int id;
  final ArticleAuthorLocalDTO author;
  final ArticleCategoryLocalDTO category;
  List<String> tags;
  final DateTime modifiedAt;
  final DateTime createdAt;
  final String title;
  final String description;
  final String content;
  final String image;
  final int viewsCount;
  final bool isFeatured;

  ArticleLocalDTO({
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

  static ArticleLocalDTO fromJson(json) => ArticleLocalDTO(
        id: json['id'],
        image: json['image'],
        title: json['title'],
        author: json['author'],
        category: json['category'],
        tags: json['tags'],
        modifiedAt: json['modified_at'],
        createdAt: json['created_at'],
        description: json['description'],
        content: json['content'],
        viewsCount: json['views_count'],
        isFeatured: json['is_featured'],
      );
}
