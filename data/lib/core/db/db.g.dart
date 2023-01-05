// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db.dart';

// **************************************************************************
// DriftDatabaseGenerator
// **************************************************************************

// ignore_for_file: type=lint
class ArticleData extends DataClass implements Insertable<ArticleData> {
  final int id;
  final int authorId;
  final int categoryId;
  final DateTime modifiedAt;
  final DateTime createdAt;
  final String title;
  final String description;
  final String content;
  final String image;
  final int viewsCount;
  final bool isFeatured;
  const ArticleData(
      {required this.id,
      required this.authorId,
      required this.categoryId,
      required this.modifiedAt,
      required this.createdAt,
      required this.title,
      required this.description,
      required this.content,
      required this.image,
      required this.viewsCount,
      required this.isFeatured});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['author_id'] = Variable<int>(authorId);
    map['category_id'] = Variable<int>(categoryId);
    map['modified_at'] = Variable<DateTime>(modifiedAt);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['title'] = Variable<String>(title);
    map['description'] = Variable<String>(description);
    map['content'] = Variable<String>(content);
    map['image'] = Variable<String>(image);
    map['views_count'] = Variable<int>(viewsCount);
    map['is_featured'] = Variable<bool>(isFeatured);
    return map;
  }

  ArticleCompanion toCompanion(bool nullToAbsent) {
    return ArticleCompanion(
      id: Value(id),
      authorId: Value(authorId),
      categoryId: Value(categoryId),
      modifiedAt: Value(modifiedAt),
      createdAt: Value(createdAt),
      title: Value(title),
      description: Value(description),
      content: Value(content),
      image: Value(image),
      viewsCount: Value(viewsCount),
      isFeatured: Value(isFeatured),
    );
  }

  factory ArticleData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ArticleData(
      id: serializer.fromJson<int>(json['id']),
      authorId: serializer.fromJson<int>(json['authorId']),
      categoryId: serializer.fromJson<int>(json['categoryId']),
      modifiedAt: serializer.fromJson<DateTime>(json['modifiedAt']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
      content: serializer.fromJson<String>(json['content']),
      image: serializer.fromJson<String>(json['image']),
      viewsCount: serializer.fromJson<int>(json['viewsCount']),
      isFeatured: serializer.fromJson<bool>(json['isFeatured']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'authorId': serializer.toJson<int>(authorId),
      'categoryId': serializer.toJson<int>(categoryId),
      'modifiedAt': serializer.toJson<DateTime>(modifiedAt),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
      'content': serializer.toJson<String>(content),
      'image': serializer.toJson<String>(image),
      'viewsCount': serializer.toJson<int>(viewsCount),
      'isFeatured': serializer.toJson<bool>(isFeatured),
    };
  }

  ArticleData copyWith(
          {int? id,
          int? authorId,
          int? categoryId,
          DateTime? modifiedAt,
          DateTime? createdAt,
          String? title,
          String? description,
          String? content,
          String? image,
          int? viewsCount,
          bool? isFeatured}) =>
      ArticleData(
        id: id ?? this.id,
        authorId: authorId ?? this.authorId,
        categoryId: categoryId ?? this.categoryId,
        modifiedAt: modifiedAt ?? this.modifiedAt,
        createdAt: createdAt ?? this.createdAt,
        title: title ?? this.title,
        description: description ?? this.description,
        content: content ?? this.content,
        image: image ?? this.image,
        viewsCount: viewsCount ?? this.viewsCount,
        isFeatured: isFeatured ?? this.isFeatured,
      );
  @override
  String toString() {
    return (StringBuffer('ArticleData(')
          ..write('id: $id, ')
          ..write('authorId: $authorId, ')
          ..write('categoryId: $categoryId, ')
          ..write('modifiedAt: $modifiedAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('content: $content, ')
          ..write('image: $image, ')
          ..write('viewsCount: $viewsCount, ')
          ..write('isFeatured: $isFeatured')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, authorId, categoryId, modifiedAt,
      createdAt, title, description, content, image, viewsCount, isFeatured);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ArticleData &&
          other.id == this.id &&
          other.authorId == this.authorId &&
          other.categoryId == this.categoryId &&
          other.modifiedAt == this.modifiedAt &&
          other.createdAt == this.createdAt &&
          other.title == this.title &&
          other.description == this.description &&
          other.content == this.content &&
          other.image == this.image &&
          other.viewsCount == this.viewsCount &&
          other.isFeatured == this.isFeatured);
}

class ArticleCompanion extends UpdateCompanion<ArticleData> {
  final Value<int> id;
  final Value<int> authorId;
  final Value<int> categoryId;
  final Value<DateTime> modifiedAt;
  final Value<DateTime> createdAt;
  final Value<String> title;
  final Value<String> description;
  final Value<String> content;
  final Value<String> image;
  final Value<int> viewsCount;
  final Value<bool> isFeatured;
  const ArticleCompanion({
    this.id = const Value.absent(),
    this.authorId = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.modifiedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.content = const Value.absent(),
    this.image = const Value.absent(),
    this.viewsCount = const Value.absent(),
    this.isFeatured = const Value.absent(),
  });
  ArticleCompanion.insert({
    this.id = const Value.absent(),
    required int authorId,
    required int categoryId,
    required DateTime modifiedAt,
    required DateTime createdAt,
    required String title,
    required String description,
    required String content,
    required String image,
    required int viewsCount,
    required bool isFeatured,
  })  : authorId = Value(authorId),
        categoryId = Value(categoryId),
        modifiedAt = Value(modifiedAt),
        createdAt = Value(createdAt),
        title = Value(title),
        description = Value(description),
        content = Value(content),
        image = Value(image),
        viewsCount = Value(viewsCount),
        isFeatured = Value(isFeatured);
  static Insertable<ArticleData> custom({
    Expression<int>? id,
    Expression<int>? authorId,
    Expression<int>? categoryId,
    Expression<DateTime>? modifiedAt,
    Expression<DateTime>? createdAt,
    Expression<String>? title,
    Expression<String>? description,
    Expression<String>? content,
    Expression<String>? image,
    Expression<int>? viewsCount,
    Expression<bool>? isFeatured,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (authorId != null) 'author_id': authorId,
      if (categoryId != null) 'category_id': categoryId,
      if (modifiedAt != null) 'modified_at': modifiedAt,
      if (createdAt != null) 'created_at': createdAt,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (content != null) 'content': content,
      if (image != null) 'image': image,
      if (viewsCount != null) 'views_count': viewsCount,
      if (isFeatured != null) 'is_featured': isFeatured,
    });
  }

  ArticleCompanion copyWith(
      {Value<int>? id,
      Value<int>? authorId,
      Value<int>? categoryId,
      Value<DateTime>? modifiedAt,
      Value<DateTime>? createdAt,
      Value<String>? title,
      Value<String>? description,
      Value<String>? content,
      Value<String>? image,
      Value<int>? viewsCount,
      Value<bool>? isFeatured}) {
    return ArticleCompanion(
      id: id ?? this.id,
      authorId: authorId ?? this.authorId,
      categoryId: categoryId ?? this.categoryId,
      modifiedAt: modifiedAt ?? this.modifiedAt,
      createdAt: createdAt ?? this.createdAt,
      title: title ?? this.title,
      description: description ?? this.description,
      content: content ?? this.content,
      image: image ?? this.image,
      viewsCount: viewsCount ?? this.viewsCount,
      isFeatured: isFeatured ?? this.isFeatured,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (authorId.present) {
      map['author_id'] = Variable<int>(authorId.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<int>(categoryId.value);
    }
    if (modifiedAt.present) {
      map['modified_at'] = Variable<DateTime>(modifiedAt.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (viewsCount.present) {
      map['views_count'] = Variable<int>(viewsCount.value);
    }
    if (isFeatured.present) {
      map['is_featured'] = Variable<bool>(isFeatured.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ArticleCompanion(')
          ..write('id: $id, ')
          ..write('authorId: $authorId, ')
          ..write('categoryId: $categoryId, ')
          ..write('modifiedAt: $modifiedAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('content: $content, ')
          ..write('image: $image, ')
          ..write('viewsCount: $viewsCount, ')
          ..write('isFeatured: $isFeatured')
          ..write(')'))
        .toString();
  }
}

class $ArticleTable extends Article with TableInfo<$ArticleTable, ArticleData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ArticleTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  final VerificationMeta _authorIdMeta = const VerificationMeta('authorId');
  @override
  late final GeneratedColumn<int> authorId = GeneratedColumn<int>(
      'author_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _categoryIdMeta = const VerificationMeta('categoryId');
  @override
  late final GeneratedColumn<int> categoryId = GeneratedColumn<int>(
      'category_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _modifiedAtMeta = const VerificationMeta('modifiedAt');
  @override
  late final GeneratedColumn<DateTime> modifiedAt = GeneratedColumn<DateTime>(
      'modified_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _contentMeta = const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
      'image', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _viewsCountMeta = const VerificationMeta('viewsCount');
  @override
  late final GeneratedColumn<int> viewsCount = GeneratedColumn<int>(
      'views_count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _isFeaturedMeta = const VerificationMeta('isFeatured');
  @override
  late final GeneratedColumn<bool> isFeatured = GeneratedColumn<bool>(
      'is_featured', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK ("is_featured" IN (0, 1))');
  @override
  List<GeneratedColumn> get $columns => [
        id,
        authorId,
        categoryId,
        modifiedAt,
        createdAt,
        title,
        description,
        content,
        image,
        viewsCount,
        isFeatured
      ];
  @override
  String get aliasedName => _alias ?? 'article';
  @override
  String get actualTableName => 'article';
  @override
  VerificationContext validateIntegrity(Insertable<ArticleData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('author_id')) {
      context.handle(_authorIdMeta,
          authorId.isAcceptableOrUnknown(data['author_id']!, _authorIdMeta));
    } else if (isInserting) {
      context.missing(_authorIdMeta);
    }
    if (data.containsKey('category_id')) {
      context.handle(
          _categoryIdMeta,
          categoryId.isAcceptableOrUnknown(
              data['category_id']!, _categoryIdMeta));
    } else if (isInserting) {
      context.missing(_categoryIdMeta);
    }
    if (data.containsKey('modified_at')) {
      context.handle(
          _modifiedAtMeta,
          modifiedAt.isAcceptableOrUnknown(
              data['modified_at']!, _modifiedAtMeta));
    } else if (isInserting) {
      context.missing(_modifiedAtMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    if (data.containsKey('views_count')) {
      context.handle(
          _viewsCountMeta,
          viewsCount.isAcceptableOrUnknown(
              data['views_count']!, _viewsCountMeta));
    } else if (isInserting) {
      context.missing(_viewsCountMeta);
    }
    if (data.containsKey('is_featured')) {
      context.handle(
          _isFeaturedMeta,
          isFeatured.isAcceptableOrUnknown(
              data['is_featured']!, _isFeaturedMeta));
    } else if (isInserting) {
      context.missing(_isFeaturedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ArticleData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ArticleData(
      id: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      authorId: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}author_id'])!,
      categoryId: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}category_id'])!,
      modifiedAt: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}modified_at'])!,
      createdAt: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      title: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      description: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      content: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}content'])!,
      image: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}image'])!,
      viewsCount: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}views_count'])!,
      isFeatured: attachedDatabase.options.types
          .read(DriftSqlType.bool, data['${effectivePrefix}is_featured'])!,
    );
  }

  @override
  $ArticleTable createAlias(String alias) {
    return $ArticleTable(attachedDatabase, alias);
  }
}

class ArticleCategoryData extends DataClass
    implements Insertable<ArticleCategoryData> {
  final int id;
  final DateTime modifiedAt;
  final DateTime createdAt;
  final String title;
  const ArticleCategoryData(
      {required this.id,
      required this.modifiedAt,
      required this.createdAt,
      required this.title});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['modified_at'] = Variable<DateTime>(modifiedAt);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['title'] = Variable<String>(title);
    return map;
  }

  ArticleCategoryCompanion toCompanion(bool nullToAbsent) {
    return ArticleCategoryCompanion(
      id: Value(id),
      modifiedAt: Value(modifiedAt),
      createdAt: Value(createdAt),
      title: Value(title),
    );
  }

  factory ArticleCategoryData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ArticleCategoryData(
      id: serializer.fromJson<int>(json['id']),
      modifiedAt: serializer.fromJson<DateTime>(json['modifiedAt']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      title: serializer.fromJson<String>(json['title']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'modifiedAt': serializer.toJson<DateTime>(modifiedAt),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'title': serializer.toJson<String>(title),
    };
  }

  ArticleCategoryData copyWith(
          {int? id,
          DateTime? modifiedAt,
          DateTime? createdAt,
          String? title}) =>
      ArticleCategoryData(
        id: id ?? this.id,
        modifiedAt: modifiedAt ?? this.modifiedAt,
        createdAt: createdAt ?? this.createdAt,
        title: title ?? this.title,
      );
  @override
  String toString() {
    return (StringBuffer('ArticleCategoryData(')
          ..write('id: $id, ')
          ..write('modifiedAt: $modifiedAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('title: $title')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, modifiedAt, createdAt, title);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ArticleCategoryData &&
          other.id == this.id &&
          other.modifiedAt == this.modifiedAt &&
          other.createdAt == this.createdAt &&
          other.title == this.title);
}

class ArticleCategoryCompanion extends UpdateCompanion<ArticleCategoryData> {
  final Value<int> id;
  final Value<DateTime> modifiedAt;
  final Value<DateTime> createdAt;
  final Value<String> title;
  const ArticleCategoryCompanion({
    this.id = const Value.absent(),
    this.modifiedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.title = const Value.absent(),
  });
  ArticleCategoryCompanion.insert({
    this.id = const Value.absent(),
    required DateTime modifiedAt,
    required DateTime createdAt,
    required String title,
  })  : modifiedAt = Value(modifiedAt),
        createdAt = Value(createdAt),
        title = Value(title);
  static Insertable<ArticleCategoryData> custom({
    Expression<int>? id,
    Expression<DateTime>? modifiedAt,
    Expression<DateTime>? createdAt,
    Expression<String>? title,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (modifiedAt != null) 'modified_at': modifiedAt,
      if (createdAt != null) 'created_at': createdAt,
      if (title != null) 'title': title,
    });
  }

  ArticleCategoryCompanion copyWith(
      {Value<int>? id,
      Value<DateTime>? modifiedAt,
      Value<DateTime>? createdAt,
      Value<String>? title}) {
    return ArticleCategoryCompanion(
      id: id ?? this.id,
      modifiedAt: modifiedAt ?? this.modifiedAt,
      createdAt: createdAt ?? this.createdAt,
      title: title ?? this.title,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (modifiedAt.present) {
      map['modified_at'] = Variable<DateTime>(modifiedAt.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ArticleCategoryCompanion(')
          ..write('id: $id, ')
          ..write('modifiedAt: $modifiedAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('title: $title')
          ..write(')'))
        .toString();
  }
}

class $ArticleCategoryTable extends ArticleCategory
    with TableInfo<$ArticleCategoryTable, ArticleCategoryData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ArticleCategoryTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  final VerificationMeta _modifiedAtMeta = const VerificationMeta('modifiedAt');
  @override
  late final GeneratedColumn<DateTime> modifiedAt = GeneratedColumn<DateTime>(
      'modified_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, modifiedAt, createdAt, title];
  @override
  String get aliasedName => _alias ?? 'article_category';
  @override
  String get actualTableName => 'article_category';
  @override
  VerificationContext validateIntegrity(
      Insertable<ArticleCategoryData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('modified_at')) {
      context.handle(
          _modifiedAtMeta,
          modifiedAt.isAcceptableOrUnknown(
              data['modified_at']!, _modifiedAtMeta));
    } else if (isInserting) {
      context.missing(_modifiedAtMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ArticleCategoryData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ArticleCategoryData(
      id: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      modifiedAt: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}modified_at'])!,
      createdAt: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      title: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
    );
  }

  @override
  $ArticleCategoryTable createAlias(String alias) {
    return $ArticleCategoryTable(attachedDatabase, alias);
  }
}

class ArticleAuthorData extends DataClass
    implements Insertable<ArticleAuthorData> {
  final int id;
  final DateTime modifiedAt;
  final DateTime createdAt;
  final String name;
  final String avatarUrl;
  const ArticleAuthorData(
      {required this.id,
      required this.modifiedAt,
      required this.createdAt,
      required this.name,
      required this.avatarUrl});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['modified_at'] = Variable<DateTime>(modifiedAt);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['name'] = Variable<String>(name);
    map['avatar_url'] = Variable<String>(avatarUrl);
    return map;
  }

  ArticleAuthorCompanion toCompanion(bool nullToAbsent) {
    return ArticleAuthorCompanion(
      id: Value(id),
      modifiedAt: Value(modifiedAt),
      createdAt: Value(createdAt),
      name: Value(name),
      avatarUrl: Value(avatarUrl),
    );
  }

  factory ArticleAuthorData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ArticleAuthorData(
      id: serializer.fromJson<int>(json['id']),
      modifiedAt: serializer.fromJson<DateTime>(json['modifiedAt']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      name: serializer.fromJson<String>(json['name']),
      avatarUrl: serializer.fromJson<String>(json['avatarUrl']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'modifiedAt': serializer.toJson<DateTime>(modifiedAt),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'name': serializer.toJson<String>(name),
      'avatarUrl': serializer.toJson<String>(avatarUrl),
    };
  }

  ArticleAuthorData copyWith(
          {int? id,
          DateTime? modifiedAt,
          DateTime? createdAt,
          String? name,
          String? avatarUrl}) =>
      ArticleAuthorData(
        id: id ?? this.id,
        modifiedAt: modifiedAt ?? this.modifiedAt,
        createdAt: createdAt ?? this.createdAt,
        name: name ?? this.name,
        avatarUrl: avatarUrl ?? this.avatarUrl,
      );
  @override
  String toString() {
    return (StringBuffer('ArticleAuthorData(')
          ..write('id: $id, ')
          ..write('modifiedAt: $modifiedAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('name: $name, ')
          ..write('avatarUrl: $avatarUrl')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, modifiedAt, createdAt, name, avatarUrl);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ArticleAuthorData &&
          other.id == this.id &&
          other.modifiedAt == this.modifiedAt &&
          other.createdAt == this.createdAt &&
          other.name == this.name &&
          other.avatarUrl == this.avatarUrl);
}

class ArticleAuthorCompanion extends UpdateCompanion<ArticleAuthorData> {
  final Value<int> id;
  final Value<DateTime> modifiedAt;
  final Value<DateTime> createdAt;
  final Value<String> name;
  final Value<String> avatarUrl;
  const ArticleAuthorCompanion({
    this.id = const Value.absent(),
    this.modifiedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.name = const Value.absent(),
    this.avatarUrl = const Value.absent(),
  });
  ArticleAuthorCompanion.insert({
    this.id = const Value.absent(),
    required DateTime modifiedAt,
    required DateTime createdAt,
    required String name,
    required String avatarUrl,
  })  : modifiedAt = Value(modifiedAt),
        createdAt = Value(createdAt),
        name = Value(name),
        avatarUrl = Value(avatarUrl);
  static Insertable<ArticleAuthorData> custom({
    Expression<int>? id,
    Expression<DateTime>? modifiedAt,
    Expression<DateTime>? createdAt,
    Expression<String>? name,
    Expression<String>? avatarUrl,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (modifiedAt != null) 'modified_at': modifiedAt,
      if (createdAt != null) 'created_at': createdAt,
      if (name != null) 'name': name,
      if (avatarUrl != null) 'avatar_url': avatarUrl,
    });
  }

  ArticleAuthorCompanion copyWith(
      {Value<int>? id,
      Value<DateTime>? modifiedAt,
      Value<DateTime>? createdAt,
      Value<String>? name,
      Value<String>? avatarUrl}) {
    return ArticleAuthorCompanion(
      id: id ?? this.id,
      modifiedAt: modifiedAt ?? this.modifiedAt,
      createdAt: createdAt ?? this.createdAt,
      name: name ?? this.name,
      avatarUrl: avatarUrl ?? this.avatarUrl,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (modifiedAt.present) {
      map['modified_at'] = Variable<DateTime>(modifiedAt.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (avatarUrl.present) {
      map['avatar_url'] = Variable<String>(avatarUrl.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ArticleAuthorCompanion(')
          ..write('id: $id, ')
          ..write('modifiedAt: $modifiedAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('name: $name, ')
          ..write('avatarUrl: $avatarUrl')
          ..write(')'))
        .toString();
  }
}

class $ArticleAuthorTable extends ArticleAuthor
    with TableInfo<$ArticleAuthorTable, ArticleAuthorData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ArticleAuthorTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  final VerificationMeta _modifiedAtMeta = const VerificationMeta('modifiedAt');
  @override
  late final GeneratedColumn<DateTime> modifiedAt = GeneratedColumn<DateTime>(
      'modified_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _avatarUrlMeta = const VerificationMeta('avatarUrl');
  @override
  late final GeneratedColumn<String> avatarUrl = GeneratedColumn<String>(
      'avatar_url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, modifiedAt, createdAt, name, avatarUrl];
  @override
  String get aliasedName => _alias ?? 'article_author';
  @override
  String get actualTableName => 'article_author';
  @override
  VerificationContext validateIntegrity(Insertable<ArticleAuthorData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('modified_at')) {
      context.handle(
          _modifiedAtMeta,
          modifiedAt.isAcceptableOrUnknown(
              data['modified_at']!, _modifiedAtMeta));
    } else if (isInserting) {
      context.missing(_modifiedAtMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('avatar_url')) {
      context.handle(_avatarUrlMeta,
          avatarUrl.isAcceptableOrUnknown(data['avatar_url']!, _avatarUrlMeta));
    } else if (isInserting) {
      context.missing(_avatarUrlMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ArticleAuthorData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ArticleAuthorData(
      id: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      modifiedAt: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}modified_at'])!,
      createdAt: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      name: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      avatarUrl: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}avatar_url'])!,
    );
  }

  @override
  $ArticleAuthorTable createAlias(String alias) {
    return $ArticleAuthorTable(attachedDatabase, alias);
  }
}

class ArticleTagData extends DataClass implements Insertable<ArticleTagData> {
  final int articleId;
  final String tag;
  const ArticleTagData({required this.articleId, required this.tag});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['article_id'] = Variable<int>(articleId);
    map['tag'] = Variable<String>(tag);
    return map;
  }

  ArticleTagCompanion toCompanion(bool nullToAbsent) {
    return ArticleTagCompanion(
      articleId: Value(articleId),
      tag: Value(tag),
    );
  }

  factory ArticleTagData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ArticleTagData(
      articleId: serializer.fromJson<int>(json['articleId']),
      tag: serializer.fromJson<String>(json['tag']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'articleId': serializer.toJson<int>(articleId),
      'tag': serializer.toJson<String>(tag),
    };
  }

  ArticleTagData copyWith({int? articleId, String? tag}) => ArticleTagData(
        articleId: articleId ?? this.articleId,
        tag: tag ?? this.tag,
      );
  @override
  String toString() {
    return (StringBuffer('ArticleTagData(')
          ..write('articleId: $articleId, ')
          ..write('tag: $tag')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(articleId, tag);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ArticleTagData &&
          other.articleId == this.articleId &&
          other.tag == this.tag);
}

class ArticleTagCompanion extends UpdateCompanion<ArticleTagData> {
  final Value<int> articleId;
  final Value<String> tag;
  const ArticleTagCompanion({
    this.articleId = const Value.absent(),
    this.tag = const Value.absent(),
  });
  ArticleTagCompanion.insert({
    required int articleId,
    required String tag,
  })  : articleId = Value(articleId),
        tag = Value(tag);
  static Insertable<ArticleTagData> custom({
    Expression<int>? articleId,
    Expression<String>? tag,
  }) {
    return RawValuesInsertable({
      if (articleId != null) 'article_id': articleId,
      if (tag != null) 'tag': tag,
    });
  }

  ArticleTagCompanion copyWith({Value<int>? articleId, Value<String>? tag}) {
    return ArticleTagCompanion(
      articleId: articleId ?? this.articleId,
      tag: tag ?? this.tag,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (articleId.present) {
      map['article_id'] = Variable<int>(articleId.value);
    }
    if (tag.present) {
      map['tag'] = Variable<String>(tag.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ArticleTagCompanion(')
          ..write('articleId: $articleId, ')
          ..write('tag: $tag')
          ..write(')'))
        .toString();
  }
}

class $ArticleTagTable extends ArticleTag
    with TableInfo<$ArticleTagTable, ArticleTagData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ArticleTagTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _articleIdMeta = const VerificationMeta('articleId');
  @override
  late final GeneratedColumn<int> articleId = GeneratedColumn<int>(
      'article_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _tagMeta = const VerificationMeta('tag');
  @override
  late final GeneratedColumn<String> tag = GeneratedColumn<String>(
      'tag', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [articleId, tag];
  @override
  String get aliasedName => _alias ?? 'article_tag';
  @override
  String get actualTableName => 'article_tag';
  @override
  VerificationContext validateIntegrity(Insertable<ArticleTagData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('article_id')) {
      context.handle(_articleIdMeta,
          articleId.isAcceptableOrUnknown(data['article_id']!, _articleIdMeta));
    } else if (isInserting) {
      context.missing(_articleIdMeta);
    }
    if (data.containsKey('tag')) {
      context.handle(
          _tagMeta, tag.isAcceptableOrUnknown(data['tag']!, _tagMeta));
    } else if (isInserting) {
      context.missing(_tagMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {articleId, tag};
  @override
  ArticleTagData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ArticleTagData(
      articleId: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}article_id'])!,
      tag: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}tag'])!,
    );
  }

  @override
  $ArticleTagTable createAlias(String alias) {
    return $ArticleTagTable(attachedDatabase, alias);
  }
}

abstract class _$LocalDatabase extends GeneratedDatabase {
  _$LocalDatabase(QueryExecutor e) : super(e);
  late final $ArticleTable article = $ArticleTable(this);
  late final $ArticleCategoryTable articleCategory =
      $ArticleCategoryTable(this);
  late final $ArticleAuthorTable articleAuthor = $ArticleAuthorTable(this);
  late final $ArticleTagTable articleTag = $ArticleTagTable(this);
  @override
  Iterable<TableInfo<Table, dynamic>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [article, articleCategory, articleAuthor, articleTag];
}
