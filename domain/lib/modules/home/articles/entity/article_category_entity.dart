class ArticleCategoryEntity {
  final int id;
  final DateTime modifiedAt;
  final DateTime createdAt;
  final String title;

  const ArticleCategoryEntity({
    required this.id,
    required this.modifiedAt,
    required this.createdAt,
    required this.title,
  });
}
