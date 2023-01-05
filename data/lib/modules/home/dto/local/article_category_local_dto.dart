class ArticleCategoryLocalDTO {
  final int id;
  final DateTime modifiedAt;
  final DateTime createdAt;
  final String title;

  const ArticleCategoryLocalDTO({
    required this.id,
    required this.modifiedAt,
    required this.createdAt,
    required this.title,
  });

  static ArticleCategoryLocalDTO fromJson(json) => ArticleCategoryLocalDTO(
    id: json['id'],
    modifiedAt: json['modified_at'],
    createdAt: json['created_at'],
    title: json['title'],
  );
}
