class ArticleAuthorApiDTO {
  final int? id;
  final DateTime modifiedAt;
  final DateTime createdAt;
  final String name;
  final String avatarUrl;

  const ArticleAuthorApiDTO({
    required this.id,
    required this.modifiedAt,
    required this.createdAt,
    required this.name,
    required this.avatarUrl,
  });

  static ArticleAuthorApiDTO fromJson(json) => ArticleAuthorApiDTO(
        id: json['id'],
        modifiedAt: DateTime.parse(json['modified_at']),
        createdAt: DateTime.parse(json['created_at']),
        name: json['name'],
        avatarUrl: json['avatar'],
      );
}
