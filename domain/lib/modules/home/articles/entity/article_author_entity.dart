class ArticleAuthorEntity {
  final int id;
  final DateTime modifiedAt;
  final DateTime createdAt;
  final String name;
  final String avatarUrl;

  const ArticleAuthorEntity({
    required this.id,
    required this.modifiedAt,
    required this.createdAt,
    required this.name,
    required this.avatarUrl,
  });
}
