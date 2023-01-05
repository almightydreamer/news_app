import 'article_api_dto.dart';

class ArticlePageApiDTO {
  final int count;
  final int totalPages;
  final int perPage;
  final int currentPage;
  final List<ArticleApiDTO> results;

  const ArticlePageApiDTO({
    required this.count,
    required this.totalPages,
    required this.perPage,
    required this.currentPage,
    required this.results,
  });

  static ArticlePageApiDTO fromJson(json) {
    List<ArticleApiDTO> articles = (json['results'] as List).map((e) => ArticleApiDTO.fromJson(e)).toList();
    return ArticlePageApiDTO(
        count: json['count'],
        totalPages: json['total_pages'],
        perPage: json['per_page'],
        currentPage: json['current_page'],
        results: articles);
  }
}
