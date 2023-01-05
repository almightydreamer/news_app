class ArticleCategoryApiDTO {
  final int id;
  final DateTime modifiedAt;
  final DateTime createdAt;
  final String title;

  const ArticleCategoryApiDTO({
    required this.id,
    required this.modifiedAt,
    required this.createdAt,
    required this.title,
  });

  static ArticleCategoryApiDTO fromJson(json) => ArticleCategoryApiDTO(
    id: json['id'],
    modifiedAt: DateTime.parse(json['modified_at']),
    createdAt: DateTime.parse(json['created_at']),
    title: json['title'],
  );
}
