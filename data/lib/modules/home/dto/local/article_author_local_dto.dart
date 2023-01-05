class ArticleAuthorLocalDTO {
  final int id;
  final DateTime modifiedAt;
  final DateTime createdAt;
  final String name;
  final String avatarUrl;

  const ArticleAuthorLocalDTO({
    required this.id,
    required this.modifiedAt,
    required this.createdAt,
    required this.name,
    required this.avatarUrl,
  });

  static ArticleAuthorLocalDTO fromJson(json) => ArticleAuthorLocalDTO(
        id: json['id'],
        modifiedAt: json['modified_at'],
        createdAt: json['created_at'],
        name: json['name'],
        avatarUrl: json['avatar'],
      );
}
