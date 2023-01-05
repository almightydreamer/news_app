import 'package:data/modules/home/dto/api/article_author_api_dto.dart';
import 'package:data/modules/home/dto/api/article_category_api_dto.dart';

class ArticleApiDTO {
  final int id;
  final ArticleAuthorApiDTO author;
  final ArticleCategoryApiDTO category;
  final List<String> tags;
  final DateTime modifiedAt;
  final DateTime createdAt;
  final String title;
  final String description;
  final String content;
  final String image;
  final int viewsCount;
  final bool isFeatured;

  const ArticleApiDTO({
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

  static ArticleApiDTO fromJson(json) {
    ArticleAuthorApiDTO author = ArticleAuthorApiDTO.fromJson(json['author']);
    ArticleCategoryApiDTO category = ArticleCategoryApiDTO.fromJson(json['category']);
    List<String> tags = List.from(json['tags']);
    return ArticleApiDTO(
        id: json['id'],
        image: json['image'],
        title: json['title'],
        author: author,
        category: category,
        tags: tags,
        modifiedAt: DateTime.parse(json['modified_at']),
        createdAt: DateTime.parse(json['created_at']),
        description: json['description'],
        content: json['content'],
        viewsCount: json['views_count'],
        isFeatured: json['is_featured'],
      );
  }
}
