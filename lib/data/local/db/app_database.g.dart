// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $AreasTable extends Areas with TableInfo<$AreasTable, Area> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AreasTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameJaMeta = const VerificationMeta('nameJa');
  @override
  late final GeneratedColumn<String> nameJa = GeneratedColumn<String>(
    'name_ja',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameEnMeta = const VerificationMeta('nameEn');
  @override
  late final GeneratedColumn<String> nameEn = GeneratedColumn<String>(
    'name_en',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _centerLatMeta = const VerificationMeta(
    'centerLat',
  );
  @override
  late final GeneratedColumn<double> centerLat = GeneratedColumn<double>(
    'center_lat',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _centerLngMeta = const VerificationMeta(
    'centerLng',
  );
  @override
  late final GeneratedColumn<double> centerLng = GeneratedColumn<double>(
    'center_lng',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _defaultZoomMeta = const VerificationMeta(
    'defaultZoom',
  );
  @override
  late final GeneratedColumn<double> defaultZoom = GeneratedColumn<double>(
    'default_zoom',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<int> isActive = GeneratedColumn<int>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<int> createdAt = GeneratedColumn<int>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<int> updatedAt = GeneratedColumn<int>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    nameJa,
    nameEn,
    centerLat,
    centerLng,
    defaultZoom,
    isActive,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'areas';
  @override
  VerificationContext validateIntegrity(
    Insertable<Area> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name_ja')) {
      context.handle(
        _nameJaMeta,
        nameJa.isAcceptableOrUnknown(data['name_ja']!, _nameJaMeta),
      );
    } else if (isInserting) {
      context.missing(_nameJaMeta);
    }
    if (data.containsKey('name_en')) {
      context.handle(
        _nameEnMeta,
        nameEn.isAcceptableOrUnknown(data['name_en']!, _nameEnMeta),
      );
    } else if (isInserting) {
      context.missing(_nameEnMeta);
    }
    if (data.containsKey('center_lat')) {
      context.handle(
        _centerLatMeta,
        centerLat.isAcceptableOrUnknown(data['center_lat']!, _centerLatMeta),
      );
    } else if (isInserting) {
      context.missing(_centerLatMeta);
    }
    if (data.containsKey('center_lng')) {
      context.handle(
        _centerLngMeta,
        centerLng.isAcceptableOrUnknown(data['center_lng']!, _centerLngMeta),
      );
    } else if (isInserting) {
      context.missing(_centerLngMeta);
    }
    if (data.containsKey('default_zoom')) {
      context.handle(
        _defaultZoomMeta,
        defaultZoom.isAcceptableOrUnknown(
          data['default_zoom']!,
          _defaultZoomMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_defaultZoomMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    } else if (isInserting) {
      context.missing(_isActiveMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Area map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Area(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      nameJa: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name_ja'],
      )!,
      nameEn: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name_en'],
      )!,
      centerLat: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}center_lat'],
      )!,
      centerLng: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}center_lng'],
      )!,
      defaultZoom: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}default_zoom'],
      )!,
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}is_active'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $AreasTable createAlias(String alias) {
    return $AreasTable(attachedDatabase, alias);
  }
}

class Area extends DataClass implements Insertable<Area> {
  final String id;
  final String nameJa;
  final String nameEn;
  final double centerLat;
  final double centerLng;
  final double defaultZoom;
  final int isActive;
  final int createdAt;
  final int updatedAt;
  const Area({
    required this.id,
    required this.nameJa,
    required this.nameEn,
    required this.centerLat,
    required this.centerLng,
    required this.defaultZoom,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name_ja'] = Variable<String>(nameJa);
    map['name_en'] = Variable<String>(nameEn);
    map['center_lat'] = Variable<double>(centerLat);
    map['center_lng'] = Variable<double>(centerLng);
    map['default_zoom'] = Variable<double>(defaultZoom);
    map['is_active'] = Variable<int>(isActive);
    map['created_at'] = Variable<int>(createdAt);
    map['updated_at'] = Variable<int>(updatedAt);
    return map;
  }

  AreasCompanion toCompanion(bool nullToAbsent) {
    return AreasCompanion(
      id: Value(id),
      nameJa: Value(nameJa),
      nameEn: Value(nameEn),
      centerLat: Value(centerLat),
      centerLng: Value(centerLng),
      defaultZoom: Value(defaultZoom),
      isActive: Value(isActive),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory Area.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Area(
      id: serializer.fromJson<String>(json['id']),
      nameJa: serializer.fromJson<String>(json['nameJa']),
      nameEn: serializer.fromJson<String>(json['nameEn']),
      centerLat: serializer.fromJson<double>(json['centerLat']),
      centerLng: serializer.fromJson<double>(json['centerLng']),
      defaultZoom: serializer.fromJson<double>(json['defaultZoom']),
      isActive: serializer.fromJson<int>(json['isActive']),
      createdAt: serializer.fromJson<int>(json['createdAt']),
      updatedAt: serializer.fromJson<int>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'nameJa': serializer.toJson<String>(nameJa),
      'nameEn': serializer.toJson<String>(nameEn),
      'centerLat': serializer.toJson<double>(centerLat),
      'centerLng': serializer.toJson<double>(centerLng),
      'defaultZoom': serializer.toJson<double>(defaultZoom),
      'isActive': serializer.toJson<int>(isActive),
      'createdAt': serializer.toJson<int>(createdAt),
      'updatedAt': serializer.toJson<int>(updatedAt),
    };
  }

  Area copyWith({
    String? id,
    String? nameJa,
    String? nameEn,
    double? centerLat,
    double? centerLng,
    double? defaultZoom,
    int? isActive,
    int? createdAt,
    int? updatedAt,
  }) => Area(
    id: id ?? this.id,
    nameJa: nameJa ?? this.nameJa,
    nameEn: nameEn ?? this.nameEn,
    centerLat: centerLat ?? this.centerLat,
    centerLng: centerLng ?? this.centerLng,
    defaultZoom: defaultZoom ?? this.defaultZoom,
    isActive: isActive ?? this.isActive,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  Area copyWithCompanion(AreasCompanion data) {
    return Area(
      id: data.id.present ? data.id.value : this.id,
      nameJa: data.nameJa.present ? data.nameJa.value : this.nameJa,
      nameEn: data.nameEn.present ? data.nameEn.value : this.nameEn,
      centerLat: data.centerLat.present ? data.centerLat.value : this.centerLat,
      centerLng: data.centerLng.present ? data.centerLng.value : this.centerLng,
      defaultZoom: data.defaultZoom.present
          ? data.defaultZoom.value
          : this.defaultZoom,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Area(')
          ..write('id: $id, ')
          ..write('nameJa: $nameJa, ')
          ..write('nameEn: $nameEn, ')
          ..write('centerLat: $centerLat, ')
          ..write('centerLng: $centerLng, ')
          ..write('defaultZoom: $defaultZoom, ')
          ..write('isActive: $isActive, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    nameJa,
    nameEn,
    centerLat,
    centerLng,
    defaultZoom,
    isActive,
    createdAt,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Area &&
          other.id == this.id &&
          other.nameJa == this.nameJa &&
          other.nameEn == this.nameEn &&
          other.centerLat == this.centerLat &&
          other.centerLng == this.centerLng &&
          other.defaultZoom == this.defaultZoom &&
          other.isActive == this.isActive &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class AreasCompanion extends UpdateCompanion<Area> {
  final Value<String> id;
  final Value<String> nameJa;
  final Value<String> nameEn;
  final Value<double> centerLat;
  final Value<double> centerLng;
  final Value<double> defaultZoom;
  final Value<int> isActive;
  final Value<int> createdAt;
  final Value<int> updatedAt;
  final Value<int> rowid;
  const AreasCompanion({
    this.id = const Value.absent(),
    this.nameJa = const Value.absent(),
    this.nameEn = const Value.absent(),
    this.centerLat = const Value.absent(),
    this.centerLng = const Value.absent(),
    this.defaultZoom = const Value.absent(),
    this.isActive = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AreasCompanion.insert({
    required String id,
    required String nameJa,
    required String nameEn,
    required double centerLat,
    required double centerLng,
    required double defaultZoom,
    required int isActive,
    required int createdAt,
    required int updatedAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       nameJa = Value(nameJa),
       nameEn = Value(nameEn),
       centerLat = Value(centerLat),
       centerLng = Value(centerLng),
       defaultZoom = Value(defaultZoom),
       isActive = Value(isActive),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<Area> custom({
    Expression<String>? id,
    Expression<String>? nameJa,
    Expression<String>? nameEn,
    Expression<double>? centerLat,
    Expression<double>? centerLng,
    Expression<double>? defaultZoom,
    Expression<int>? isActive,
    Expression<int>? createdAt,
    Expression<int>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nameJa != null) 'name_ja': nameJa,
      if (nameEn != null) 'name_en': nameEn,
      if (centerLat != null) 'center_lat': centerLat,
      if (centerLng != null) 'center_lng': centerLng,
      if (defaultZoom != null) 'default_zoom': defaultZoom,
      if (isActive != null) 'is_active': isActive,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AreasCompanion copyWith({
    Value<String>? id,
    Value<String>? nameJa,
    Value<String>? nameEn,
    Value<double>? centerLat,
    Value<double>? centerLng,
    Value<double>? defaultZoom,
    Value<int>? isActive,
    Value<int>? createdAt,
    Value<int>? updatedAt,
    Value<int>? rowid,
  }) {
    return AreasCompanion(
      id: id ?? this.id,
      nameJa: nameJa ?? this.nameJa,
      nameEn: nameEn ?? this.nameEn,
      centerLat: centerLat ?? this.centerLat,
      centerLng: centerLng ?? this.centerLng,
      defaultZoom: defaultZoom ?? this.defaultZoom,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (nameJa.present) {
      map['name_ja'] = Variable<String>(nameJa.value);
    }
    if (nameEn.present) {
      map['name_en'] = Variable<String>(nameEn.value);
    }
    if (centerLat.present) {
      map['center_lat'] = Variable<double>(centerLat.value);
    }
    if (centerLng.present) {
      map['center_lng'] = Variable<double>(centerLng.value);
    }
    if (defaultZoom.present) {
      map['default_zoom'] = Variable<double>(defaultZoom.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<int>(isActive.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<int>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<int>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AreasCompanion(')
          ..write('id: $id, ')
          ..write('nameJa: $nameJa, ')
          ..write('nameEn: $nameEn, ')
          ..write('centerLat: $centerLat, ')
          ..write('centerLng: $centerLng, ')
          ..write('defaultZoom: $defaultZoom, ')
          ..write('isActive: $isActive, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CategoriesTable extends Categories
    with TableInfo<$CategoriesTable, Category> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CategoriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _labelJaMeta = const VerificationMeta(
    'labelJa',
  );
  @override
  late final GeneratedColumn<String> labelJa = GeneratedColumn<String>(
    'label_ja',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _labelEnMeta = const VerificationMeta(
    'labelEn',
  );
  @override
  late final GeneratedColumn<String> labelEn = GeneratedColumn<String>(
    'label_en',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isNightlifeMeta = const VerificationMeta(
    'isNightlife',
  );
  @override
  late final GeneratedColumn<int> isNightlife = GeneratedColumn<int>(
    'is_nightlife',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sortOrderMeta = const VerificationMeta(
    'sortOrder',
  );
  @override
  late final GeneratedColumn<int> sortOrder = GeneratedColumn<int>(
    'sort_order',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<int> isActive = GeneratedColumn<int>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    labelJa,
    labelEn,
    isNightlife,
    sortOrder,
    isActive,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'categories';
  @override
  VerificationContext validateIntegrity(
    Insertable<Category> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('label_ja')) {
      context.handle(
        _labelJaMeta,
        labelJa.isAcceptableOrUnknown(data['label_ja']!, _labelJaMeta),
      );
    } else if (isInserting) {
      context.missing(_labelJaMeta);
    }
    if (data.containsKey('label_en')) {
      context.handle(
        _labelEnMeta,
        labelEn.isAcceptableOrUnknown(data['label_en']!, _labelEnMeta),
      );
    } else if (isInserting) {
      context.missing(_labelEnMeta);
    }
    if (data.containsKey('is_nightlife')) {
      context.handle(
        _isNightlifeMeta,
        isNightlife.isAcceptableOrUnknown(
          data['is_nightlife']!,
          _isNightlifeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_isNightlifeMeta);
    }
    if (data.containsKey('sort_order')) {
      context.handle(
        _sortOrderMeta,
        sortOrder.isAcceptableOrUnknown(data['sort_order']!, _sortOrderMeta),
      );
    } else if (isInserting) {
      context.missing(_sortOrderMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    } else if (isInserting) {
      context.missing(_isActiveMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Category map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Category(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      labelJa: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}label_ja'],
      )!,
      labelEn: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}label_en'],
      )!,
      isNightlife: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}is_nightlife'],
      )!,
      sortOrder: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}sort_order'],
      )!,
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}is_active'],
      )!,
    );
  }

  @override
  $CategoriesTable createAlias(String alias) {
    return $CategoriesTable(attachedDatabase, alias);
  }
}

class Category extends DataClass implements Insertable<Category> {
  final String id;
  final String labelJa;
  final String labelEn;
  final int isNightlife;
  final int sortOrder;
  final int isActive;
  const Category({
    required this.id,
    required this.labelJa,
    required this.labelEn,
    required this.isNightlife,
    required this.sortOrder,
    required this.isActive,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['label_ja'] = Variable<String>(labelJa);
    map['label_en'] = Variable<String>(labelEn);
    map['is_nightlife'] = Variable<int>(isNightlife);
    map['sort_order'] = Variable<int>(sortOrder);
    map['is_active'] = Variable<int>(isActive);
    return map;
  }

  CategoriesCompanion toCompanion(bool nullToAbsent) {
    return CategoriesCompanion(
      id: Value(id),
      labelJa: Value(labelJa),
      labelEn: Value(labelEn),
      isNightlife: Value(isNightlife),
      sortOrder: Value(sortOrder),
      isActive: Value(isActive),
    );
  }

  factory Category.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Category(
      id: serializer.fromJson<String>(json['id']),
      labelJa: serializer.fromJson<String>(json['labelJa']),
      labelEn: serializer.fromJson<String>(json['labelEn']),
      isNightlife: serializer.fromJson<int>(json['isNightlife']),
      sortOrder: serializer.fromJson<int>(json['sortOrder']),
      isActive: serializer.fromJson<int>(json['isActive']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'labelJa': serializer.toJson<String>(labelJa),
      'labelEn': serializer.toJson<String>(labelEn),
      'isNightlife': serializer.toJson<int>(isNightlife),
      'sortOrder': serializer.toJson<int>(sortOrder),
      'isActive': serializer.toJson<int>(isActive),
    };
  }

  Category copyWith({
    String? id,
    String? labelJa,
    String? labelEn,
    int? isNightlife,
    int? sortOrder,
    int? isActive,
  }) => Category(
    id: id ?? this.id,
    labelJa: labelJa ?? this.labelJa,
    labelEn: labelEn ?? this.labelEn,
    isNightlife: isNightlife ?? this.isNightlife,
    sortOrder: sortOrder ?? this.sortOrder,
    isActive: isActive ?? this.isActive,
  );
  Category copyWithCompanion(CategoriesCompanion data) {
    return Category(
      id: data.id.present ? data.id.value : this.id,
      labelJa: data.labelJa.present ? data.labelJa.value : this.labelJa,
      labelEn: data.labelEn.present ? data.labelEn.value : this.labelEn,
      isNightlife: data.isNightlife.present
          ? data.isNightlife.value
          : this.isNightlife,
      sortOrder: data.sortOrder.present ? data.sortOrder.value : this.sortOrder,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Category(')
          ..write('id: $id, ')
          ..write('labelJa: $labelJa, ')
          ..write('labelEn: $labelEn, ')
          ..write('isNightlife: $isNightlife, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('isActive: $isActive')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, labelJa, labelEn, isNightlife, sortOrder, isActive);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Category &&
          other.id == this.id &&
          other.labelJa == this.labelJa &&
          other.labelEn == this.labelEn &&
          other.isNightlife == this.isNightlife &&
          other.sortOrder == this.sortOrder &&
          other.isActive == this.isActive);
}

class CategoriesCompanion extends UpdateCompanion<Category> {
  final Value<String> id;
  final Value<String> labelJa;
  final Value<String> labelEn;
  final Value<int> isNightlife;
  final Value<int> sortOrder;
  final Value<int> isActive;
  final Value<int> rowid;
  const CategoriesCompanion({
    this.id = const Value.absent(),
    this.labelJa = const Value.absent(),
    this.labelEn = const Value.absent(),
    this.isNightlife = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CategoriesCompanion.insert({
    required String id,
    required String labelJa,
    required String labelEn,
    required int isNightlife,
    required int sortOrder,
    required int isActive,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       labelJa = Value(labelJa),
       labelEn = Value(labelEn),
       isNightlife = Value(isNightlife),
       sortOrder = Value(sortOrder),
       isActive = Value(isActive);
  static Insertable<Category> custom({
    Expression<String>? id,
    Expression<String>? labelJa,
    Expression<String>? labelEn,
    Expression<int>? isNightlife,
    Expression<int>? sortOrder,
    Expression<int>? isActive,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (labelJa != null) 'label_ja': labelJa,
      if (labelEn != null) 'label_en': labelEn,
      if (isNightlife != null) 'is_nightlife': isNightlife,
      if (sortOrder != null) 'sort_order': sortOrder,
      if (isActive != null) 'is_active': isActive,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CategoriesCompanion copyWith({
    Value<String>? id,
    Value<String>? labelJa,
    Value<String>? labelEn,
    Value<int>? isNightlife,
    Value<int>? sortOrder,
    Value<int>? isActive,
    Value<int>? rowid,
  }) {
    return CategoriesCompanion(
      id: id ?? this.id,
      labelJa: labelJa ?? this.labelJa,
      labelEn: labelEn ?? this.labelEn,
      isNightlife: isNightlife ?? this.isNightlife,
      sortOrder: sortOrder ?? this.sortOrder,
      isActive: isActive ?? this.isActive,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (labelJa.present) {
      map['label_ja'] = Variable<String>(labelJa.value);
    }
    if (labelEn.present) {
      map['label_en'] = Variable<String>(labelEn.value);
    }
    if (isNightlife.present) {
      map['is_nightlife'] = Variable<int>(isNightlife.value);
    }
    if (sortOrder.present) {
      map['sort_order'] = Variable<int>(sortOrder.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<int>(isActive.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoriesCompanion(')
          ..write('id: $id, ')
          ..write('labelJa: $labelJa, ')
          ..write('labelEn: $labelEn, ')
          ..write('isNightlife: $isNightlife, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('isActive: $isActive, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $VenuesTable extends Venues with TableInfo<$VenuesTable, Venue> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $VenuesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _areaIdMeta = const VerificationMeta('areaId');
  @override
  late final GeneratedColumn<String> areaId = GeneratedColumn<String>(
    'area_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES areas (id)',
    ),
  );
  static const VerificationMeta _nameJaMeta = const VerificationMeta('nameJa');
  @override
  late final GeneratedColumn<String> nameJa = GeneratedColumn<String>(
    'name_ja',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameEnMeta = const VerificationMeta('nameEn');
  @override
  late final GeneratedColumn<String> nameEn = GeneratedColumn<String>(
    'name_en',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _latMeta = const VerificationMeta('lat');
  @override
  late final GeneratedColumn<double> lat = GeneratedColumn<double>(
    'lat',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lngMeta = const VerificationMeta('lng');
  @override
  late final GeneratedColumn<double> lng = GeneratedColumn<double>(
    'lng',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _addressJaMeta = const VerificationMeta(
    'addressJa',
  );
  @override
  late final GeneratedColumn<String> addressJa = GeneratedColumn<String>(
    'address_ja',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _addressEnMeta = const VerificationMeta(
    'addressEn',
  );
  @override
  late final GeneratedColumn<String> addressEn = GeneratedColumn<String>(
    'address_en',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
    'phone',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _websiteUrlMeta = const VerificationMeta(
    'websiteUrl',
  );
  @override
  late final GeneratedColumn<String> websiteUrl = GeneratedColumn<String>(
    'website_url',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _notesJaMeta = const VerificationMeta(
    'notesJa',
  );
  @override
  late final GeneratedColumn<String> notesJa = GeneratedColumn<String>(
    'notes_ja',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _notesEnMeta = const VerificationMeta(
    'notesEn',
  );
  @override
  late final GeneratedColumn<String> notesEn = GeneratedColumn<String>(
    'notes_en',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _seatingTypeMeta = const VerificationMeta(
    'seatingType',
  );
  @override
  late final GeneratedColumn<String> seatingType = GeneratedColumn<String>(
    'seating_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _smokingPolicyMeta = const VerificationMeta(
    'smokingPolicy',
  );
  @override
  late final GeneratedColumn<String> smokingPolicy = GeneratedColumn<String>(
    'smoking_policy',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _paymentPolicyMeta = const VerificationMeta(
    'paymentPolicy',
  );
  @override
  late final GeneratedColumn<String> paymentPolicy = GeneratedColumn<String>(
    'payment_policy',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _coverChargeYenMeta = const VerificationMeta(
    'coverChargeYen',
  );
  @override
  late final GeneratedColumn<int> coverChargeYen = GeneratedColumn<int>(
    'cover_charge_yen',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _otoshiMeta = const VerificationMeta('otoshi');
  @override
  late final GeneratedColumn<String> otoshi = GeneratedColumn<String>(
    'otoshi',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _englishMenuMeta = const VerificationMeta(
    'englishMenu',
  );
  @override
  late final GeneratedColumn<String> englishMenu = GeneratedColumn<String>(
    'english_menu',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lastVerifiedAtMeta = const VerificationMeta(
    'lastVerifiedAt',
  );
  @override
  late final GeneratedColumn<int> lastVerifiedAt = GeneratedColumn<int>(
    'last_verified_at',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _verifiedMethodMeta = const VerificationMeta(
    'verifiedMethod',
  );
  @override
  late final GeneratedColumn<String> verifiedMethod = GeneratedColumn<String>(
    'verified_method',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<int> isActive = GeneratedColumn<int>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<int> createdAt = GeneratedColumn<int>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<int> updatedAt = GeneratedColumn<int>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    areaId,
    nameJa,
    nameEn,
    lat,
    lng,
    addressJa,
    addressEn,
    phone,
    websiteUrl,
    notesJa,
    notesEn,
    seatingType,
    smokingPolicy,
    paymentPolicy,
    coverChargeYen,
    otoshi,
    englishMenu,
    lastVerifiedAt,
    verifiedMethod,
    isActive,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'venues';
  @override
  VerificationContext validateIntegrity(
    Insertable<Venue> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('area_id')) {
      context.handle(
        _areaIdMeta,
        areaId.isAcceptableOrUnknown(data['area_id']!, _areaIdMeta),
      );
    } else if (isInserting) {
      context.missing(_areaIdMeta);
    }
    if (data.containsKey('name_ja')) {
      context.handle(
        _nameJaMeta,
        nameJa.isAcceptableOrUnknown(data['name_ja']!, _nameJaMeta),
      );
    } else if (isInserting) {
      context.missing(_nameJaMeta);
    }
    if (data.containsKey('name_en')) {
      context.handle(
        _nameEnMeta,
        nameEn.isAcceptableOrUnknown(data['name_en']!, _nameEnMeta),
      );
    } else if (isInserting) {
      context.missing(_nameEnMeta);
    }
    if (data.containsKey('lat')) {
      context.handle(
        _latMeta,
        lat.isAcceptableOrUnknown(data['lat']!, _latMeta),
      );
    } else if (isInserting) {
      context.missing(_latMeta);
    }
    if (data.containsKey('lng')) {
      context.handle(
        _lngMeta,
        lng.isAcceptableOrUnknown(data['lng']!, _lngMeta),
      );
    } else if (isInserting) {
      context.missing(_lngMeta);
    }
    if (data.containsKey('address_ja')) {
      context.handle(
        _addressJaMeta,
        addressJa.isAcceptableOrUnknown(data['address_ja']!, _addressJaMeta),
      );
    } else if (isInserting) {
      context.missing(_addressJaMeta);
    }
    if (data.containsKey('address_en')) {
      context.handle(
        _addressEnMeta,
        addressEn.isAcceptableOrUnknown(data['address_en']!, _addressEnMeta),
      );
    } else if (isInserting) {
      context.missing(_addressEnMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
        _phoneMeta,
        phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta),
      );
    } else if (isInserting) {
      context.missing(_phoneMeta);
    }
    if (data.containsKey('website_url')) {
      context.handle(
        _websiteUrlMeta,
        websiteUrl.isAcceptableOrUnknown(data['website_url']!, _websiteUrlMeta),
      );
    } else if (isInserting) {
      context.missing(_websiteUrlMeta);
    }
    if (data.containsKey('notes_ja')) {
      context.handle(
        _notesJaMeta,
        notesJa.isAcceptableOrUnknown(data['notes_ja']!, _notesJaMeta),
      );
    } else if (isInserting) {
      context.missing(_notesJaMeta);
    }
    if (data.containsKey('notes_en')) {
      context.handle(
        _notesEnMeta,
        notesEn.isAcceptableOrUnknown(data['notes_en']!, _notesEnMeta),
      );
    } else if (isInserting) {
      context.missing(_notesEnMeta);
    }
    if (data.containsKey('seating_type')) {
      context.handle(
        _seatingTypeMeta,
        seatingType.isAcceptableOrUnknown(
          data['seating_type']!,
          _seatingTypeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_seatingTypeMeta);
    }
    if (data.containsKey('smoking_policy')) {
      context.handle(
        _smokingPolicyMeta,
        smokingPolicy.isAcceptableOrUnknown(
          data['smoking_policy']!,
          _smokingPolicyMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_smokingPolicyMeta);
    }
    if (data.containsKey('payment_policy')) {
      context.handle(
        _paymentPolicyMeta,
        paymentPolicy.isAcceptableOrUnknown(
          data['payment_policy']!,
          _paymentPolicyMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_paymentPolicyMeta);
    }
    if (data.containsKey('cover_charge_yen')) {
      context.handle(
        _coverChargeYenMeta,
        coverChargeYen.isAcceptableOrUnknown(
          data['cover_charge_yen']!,
          _coverChargeYenMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_coverChargeYenMeta);
    }
    if (data.containsKey('otoshi')) {
      context.handle(
        _otoshiMeta,
        otoshi.isAcceptableOrUnknown(data['otoshi']!, _otoshiMeta),
      );
    } else if (isInserting) {
      context.missing(_otoshiMeta);
    }
    if (data.containsKey('english_menu')) {
      context.handle(
        _englishMenuMeta,
        englishMenu.isAcceptableOrUnknown(
          data['english_menu']!,
          _englishMenuMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_englishMenuMeta);
    }
    if (data.containsKey('last_verified_at')) {
      context.handle(
        _lastVerifiedAtMeta,
        lastVerifiedAt.isAcceptableOrUnknown(
          data['last_verified_at']!,
          _lastVerifiedAtMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_lastVerifiedAtMeta);
    }
    if (data.containsKey('verified_method')) {
      context.handle(
        _verifiedMethodMeta,
        verifiedMethod.isAcceptableOrUnknown(
          data['verified_method']!,
          _verifiedMethodMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_verifiedMethodMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    } else if (isInserting) {
      context.missing(_isActiveMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Venue map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Venue(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      areaId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}area_id'],
      )!,
      nameJa: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name_ja'],
      )!,
      nameEn: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name_en'],
      )!,
      lat: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}lat'],
      )!,
      lng: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}lng'],
      )!,
      addressJa: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}address_ja'],
      )!,
      addressEn: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}address_en'],
      )!,
      phone: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}phone'],
      )!,
      websiteUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}website_url'],
      )!,
      notesJa: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}notes_ja'],
      )!,
      notesEn: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}notes_en'],
      )!,
      seatingType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}seating_type'],
      )!,
      smokingPolicy: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}smoking_policy'],
      )!,
      paymentPolicy: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}payment_policy'],
      )!,
      coverChargeYen: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}cover_charge_yen'],
      )!,
      otoshi: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}otoshi'],
      )!,
      englishMenu: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}english_menu'],
      )!,
      lastVerifiedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}last_verified_at'],
      )!,
      verifiedMethod: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}verified_method'],
      )!,
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}is_active'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $VenuesTable createAlias(String alias) {
    return $VenuesTable(attachedDatabase, alias);
  }
}

class Venue extends DataClass implements Insertable<Venue> {
  final String id;
  final String areaId;
  final String nameJa;
  final String nameEn;
  final double lat;
  final double lng;
  final String addressJa;
  final String addressEn;
  final String phone;
  final String websiteUrl;
  final String notesJa;
  final String notesEn;
  final String seatingType;
  final String smokingPolicy;
  final String paymentPolicy;
  final int coverChargeYen;
  final String otoshi;
  final String englishMenu;
  final int lastVerifiedAt;
  final String verifiedMethod;
  final int isActive;
  final int createdAt;
  final int updatedAt;
  const Venue({
    required this.id,
    required this.areaId,
    required this.nameJa,
    required this.nameEn,
    required this.lat,
    required this.lng,
    required this.addressJa,
    required this.addressEn,
    required this.phone,
    required this.websiteUrl,
    required this.notesJa,
    required this.notesEn,
    required this.seatingType,
    required this.smokingPolicy,
    required this.paymentPolicy,
    required this.coverChargeYen,
    required this.otoshi,
    required this.englishMenu,
    required this.lastVerifiedAt,
    required this.verifiedMethod,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['area_id'] = Variable<String>(areaId);
    map['name_ja'] = Variable<String>(nameJa);
    map['name_en'] = Variable<String>(nameEn);
    map['lat'] = Variable<double>(lat);
    map['lng'] = Variable<double>(lng);
    map['address_ja'] = Variable<String>(addressJa);
    map['address_en'] = Variable<String>(addressEn);
    map['phone'] = Variable<String>(phone);
    map['website_url'] = Variable<String>(websiteUrl);
    map['notes_ja'] = Variable<String>(notesJa);
    map['notes_en'] = Variable<String>(notesEn);
    map['seating_type'] = Variable<String>(seatingType);
    map['smoking_policy'] = Variable<String>(smokingPolicy);
    map['payment_policy'] = Variable<String>(paymentPolicy);
    map['cover_charge_yen'] = Variable<int>(coverChargeYen);
    map['otoshi'] = Variable<String>(otoshi);
    map['english_menu'] = Variable<String>(englishMenu);
    map['last_verified_at'] = Variable<int>(lastVerifiedAt);
    map['verified_method'] = Variable<String>(verifiedMethod);
    map['is_active'] = Variable<int>(isActive);
    map['created_at'] = Variable<int>(createdAt);
    map['updated_at'] = Variable<int>(updatedAt);
    return map;
  }

  VenuesCompanion toCompanion(bool nullToAbsent) {
    return VenuesCompanion(
      id: Value(id),
      areaId: Value(areaId),
      nameJa: Value(nameJa),
      nameEn: Value(nameEn),
      lat: Value(lat),
      lng: Value(lng),
      addressJa: Value(addressJa),
      addressEn: Value(addressEn),
      phone: Value(phone),
      websiteUrl: Value(websiteUrl),
      notesJa: Value(notesJa),
      notesEn: Value(notesEn),
      seatingType: Value(seatingType),
      smokingPolicy: Value(smokingPolicy),
      paymentPolicy: Value(paymentPolicy),
      coverChargeYen: Value(coverChargeYen),
      otoshi: Value(otoshi),
      englishMenu: Value(englishMenu),
      lastVerifiedAt: Value(lastVerifiedAt),
      verifiedMethod: Value(verifiedMethod),
      isActive: Value(isActive),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory Venue.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Venue(
      id: serializer.fromJson<String>(json['id']),
      areaId: serializer.fromJson<String>(json['areaId']),
      nameJa: serializer.fromJson<String>(json['nameJa']),
      nameEn: serializer.fromJson<String>(json['nameEn']),
      lat: serializer.fromJson<double>(json['lat']),
      lng: serializer.fromJson<double>(json['lng']),
      addressJa: serializer.fromJson<String>(json['addressJa']),
      addressEn: serializer.fromJson<String>(json['addressEn']),
      phone: serializer.fromJson<String>(json['phone']),
      websiteUrl: serializer.fromJson<String>(json['websiteUrl']),
      notesJa: serializer.fromJson<String>(json['notesJa']),
      notesEn: serializer.fromJson<String>(json['notesEn']),
      seatingType: serializer.fromJson<String>(json['seatingType']),
      smokingPolicy: serializer.fromJson<String>(json['smokingPolicy']),
      paymentPolicy: serializer.fromJson<String>(json['paymentPolicy']),
      coverChargeYen: serializer.fromJson<int>(json['coverChargeYen']),
      otoshi: serializer.fromJson<String>(json['otoshi']),
      englishMenu: serializer.fromJson<String>(json['englishMenu']),
      lastVerifiedAt: serializer.fromJson<int>(json['lastVerifiedAt']),
      verifiedMethod: serializer.fromJson<String>(json['verifiedMethod']),
      isActive: serializer.fromJson<int>(json['isActive']),
      createdAt: serializer.fromJson<int>(json['createdAt']),
      updatedAt: serializer.fromJson<int>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'areaId': serializer.toJson<String>(areaId),
      'nameJa': serializer.toJson<String>(nameJa),
      'nameEn': serializer.toJson<String>(nameEn),
      'lat': serializer.toJson<double>(lat),
      'lng': serializer.toJson<double>(lng),
      'addressJa': serializer.toJson<String>(addressJa),
      'addressEn': serializer.toJson<String>(addressEn),
      'phone': serializer.toJson<String>(phone),
      'websiteUrl': serializer.toJson<String>(websiteUrl),
      'notesJa': serializer.toJson<String>(notesJa),
      'notesEn': serializer.toJson<String>(notesEn),
      'seatingType': serializer.toJson<String>(seatingType),
      'smokingPolicy': serializer.toJson<String>(smokingPolicy),
      'paymentPolicy': serializer.toJson<String>(paymentPolicy),
      'coverChargeYen': serializer.toJson<int>(coverChargeYen),
      'otoshi': serializer.toJson<String>(otoshi),
      'englishMenu': serializer.toJson<String>(englishMenu),
      'lastVerifiedAt': serializer.toJson<int>(lastVerifiedAt),
      'verifiedMethod': serializer.toJson<String>(verifiedMethod),
      'isActive': serializer.toJson<int>(isActive),
      'createdAt': serializer.toJson<int>(createdAt),
      'updatedAt': serializer.toJson<int>(updatedAt),
    };
  }

  Venue copyWith({
    String? id,
    String? areaId,
    String? nameJa,
    String? nameEn,
    double? lat,
    double? lng,
    String? addressJa,
    String? addressEn,
    String? phone,
    String? websiteUrl,
    String? notesJa,
    String? notesEn,
    String? seatingType,
    String? smokingPolicy,
    String? paymentPolicy,
    int? coverChargeYen,
    String? otoshi,
    String? englishMenu,
    int? lastVerifiedAt,
    String? verifiedMethod,
    int? isActive,
    int? createdAt,
    int? updatedAt,
  }) => Venue(
    id: id ?? this.id,
    areaId: areaId ?? this.areaId,
    nameJa: nameJa ?? this.nameJa,
    nameEn: nameEn ?? this.nameEn,
    lat: lat ?? this.lat,
    lng: lng ?? this.lng,
    addressJa: addressJa ?? this.addressJa,
    addressEn: addressEn ?? this.addressEn,
    phone: phone ?? this.phone,
    websiteUrl: websiteUrl ?? this.websiteUrl,
    notesJa: notesJa ?? this.notesJa,
    notesEn: notesEn ?? this.notesEn,
    seatingType: seatingType ?? this.seatingType,
    smokingPolicy: smokingPolicy ?? this.smokingPolicy,
    paymentPolicy: paymentPolicy ?? this.paymentPolicy,
    coverChargeYen: coverChargeYen ?? this.coverChargeYen,
    otoshi: otoshi ?? this.otoshi,
    englishMenu: englishMenu ?? this.englishMenu,
    lastVerifiedAt: lastVerifiedAt ?? this.lastVerifiedAt,
    verifiedMethod: verifiedMethod ?? this.verifiedMethod,
    isActive: isActive ?? this.isActive,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  Venue copyWithCompanion(VenuesCompanion data) {
    return Venue(
      id: data.id.present ? data.id.value : this.id,
      areaId: data.areaId.present ? data.areaId.value : this.areaId,
      nameJa: data.nameJa.present ? data.nameJa.value : this.nameJa,
      nameEn: data.nameEn.present ? data.nameEn.value : this.nameEn,
      lat: data.lat.present ? data.lat.value : this.lat,
      lng: data.lng.present ? data.lng.value : this.lng,
      addressJa: data.addressJa.present ? data.addressJa.value : this.addressJa,
      addressEn: data.addressEn.present ? data.addressEn.value : this.addressEn,
      phone: data.phone.present ? data.phone.value : this.phone,
      websiteUrl: data.websiteUrl.present
          ? data.websiteUrl.value
          : this.websiteUrl,
      notesJa: data.notesJa.present ? data.notesJa.value : this.notesJa,
      notesEn: data.notesEn.present ? data.notesEn.value : this.notesEn,
      seatingType: data.seatingType.present
          ? data.seatingType.value
          : this.seatingType,
      smokingPolicy: data.smokingPolicy.present
          ? data.smokingPolicy.value
          : this.smokingPolicy,
      paymentPolicy: data.paymentPolicy.present
          ? data.paymentPolicy.value
          : this.paymentPolicy,
      coverChargeYen: data.coverChargeYen.present
          ? data.coverChargeYen.value
          : this.coverChargeYen,
      otoshi: data.otoshi.present ? data.otoshi.value : this.otoshi,
      englishMenu: data.englishMenu.present
          ? data.englishMenu.value
          : this.englishMenu,
      lastVerifiedAt: data.lastVerifiedAt.present
          ? data.lastVerifiedAt.value
          : this.lastVerifiedAt,
      verifiedMethod: data.verifiedMethod.present
          ? data.verifiedMethod.value
          : this.verifiedMethod,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Venue(')
          ..write('id: $id, ')
          ..write('areaId: $areaId, ')
          ..write('nameJa: $nameJa, ')
          ..write('nameEn: $nameEn, ')
          ..write('lat: $lat, ')
          ..write('lng: $lng, ')
          ..write('addressJa: $addressJa, ')
          ..write('addressEn: $addressEn, ')
          ..write('phone: $phone, ')
          ..write('websiteUrl: $websiteUrl, ')
          ..write('notesJa: $notesJa, ')
          ..write('notesEn: $notesEn, ')
          ..write('seatingType: $seatingType, ')
          ..write('smokingPolicy: $smokingPolicy, ')
          ..write('paymentPolicy: $paymentPolicy, ')
          ..write('coverChargeYen: $coverChargeYen, ')
          ..write('otoshi: $otoshi, ')
          ..write('englishMenu: $englishMenu, ')
          ..write('lastVerifiedAt: $lastVerifiedAt, ')
          ..write('verifiedMethod: $verifiedMethod, ')
          ..write('isActive: $isActive, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    areaId,
    nameJa,
    nameEn,
    lat,
    lng,
    addressJa,
    addressEn,
    phone,
    websiteUrl,
    notesJa,
    notesEn,
    seatingType,
    smokingPolicy,
    paymentPolicy,
    coverChargeYen,
    otoshi,
    englishMenu,
    lastVerifiedAt,
    verifiedMethod,
    isActive,
    createdAt,
    updatedAt,
  ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Venue &&
          other.id == this.id &&
          other.areaId == this.areaId &&
          other.nameJa == this.nameJa &&
          other.nameEn == this.nameEn &&
          other.lat == this.lat &&
          other.lng == this.lng &&
          other.addressJa == this.addressJa &&
          other.addressEn == this.addressEn &&
          other.phone == this.phone &&
          other.websiteUrl == this.websiteUrl &&
          other.notesJa == this.notesJa &&
          other.notesEn == this.notesEn &&
          other.seatingType == this.seatingType &&
          other.smokingPolicy == this.smokingPolicy &&
          other.paymentPolicy == this.paymentPolicy &&
          other.coverChargeYen == this.coverChargeYen &&
          other.otoshi == this.otoshi &&
          other.englishMenu == this.englishMenu &&
          other.lastVerifiedAt == this.lastVerifiedAt &&
          other.verifiedMethod == this.verifiedMethod &&
          other.isActive == this.isActive &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class VenuesCompanion extends UpdateCompanion<Venue> {
  final Value<String> id;
  final Value<String> areaId;
  final Value<String> nameJa;
  final Value<String> nameEn;
  final Value<double> lat;
  final Value<double> lng;
  final Value<String> addressJa;
  final Value<String> addressEn;
  final Value<String> phone;
  final Value<String> websiteUrl;
  final Value<String> notesJa;
  final Value<String> notesEn;
  final Value<String> seatingType;
  final Value<String> smokingPolicy;
  final Value<String> paymentPolicy;
  final Value<int> coverChargeYen;
  final Value<String> otoshi;
  final Value<String> englishMenu;
  final Value<int> lastVerifiedAt;
  final Value<String> verifiedMethod;
  final Value<int> isActive;
  final Value<int> createdAt;
  final Value<int> updatedAt;
  final Value<int> rowid;
  const VenuesCompanion({
    this.id = const Value.absent(),
    this.areaId = const Value.absent(),
    this.nameJa = const Value.absent(),
    this.nameEn = const Value.absent(),
    this.lat = const Value.absent(),
    this.lng = const Value.absent(),
    this.addressJa = const Value.absent(),
    this.addressEn = const Value.absent(),
    this.phone = const Value.absent(),
    this.websiteUrl = const Value.absent(),
    this.notesJa = const Value.absent(),
    this.notesEn = const Value.absent(),
    this.seatingType = const Value.absent(),
    this.smokingPolicy = const Value.absent(),
    this.paymentPolicy = const Value.absent(),
    this.coverChargeYen = const Value.absent(),
    this.otoshi = const Value.absent(),
    this.englishMenu = const Value.absent(),
    this.lastVerifiedAt = const Value.absent(),
    this.verifiedMethod = const Value.absent(),
    this.isActive = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  VenuesCompanion.insert({
    required String id,
    required String areaId,
    required String nameJa,
    required String nameEn,
    required double lat,
    required double lng,
    required String addressJa,
    required String addressEn,
    required String phone,
    required String websiteUrl,
    required String notesJa,
    required String notesEn,
    required String seatingType,
    required String smokingPolicy,
    required String paymentPolicy,
    required int coverChargeYen,
    required String otoshi,
    required String englishMenu,
    required int lastVerifiedAt,
    required String verifiedMethod,
    required int isActive,
    required int createdAt,
    required int updatedAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       areaId = Value(areaId),
       nameJa = Value(nameJa),
       nameEn = Value(nameEn),
       lat = Value(lat),
       lng = Value(lng),
       addressJa = Value(addressJa),
       addressEn = Value(addressEn),
       phone = Value(phone),
       websiteUrl = Value(websiteUrl),
       notesJa = Value(notesJa),
       notesEn = Value(notesEn),
       seatingType = Value(seatingType),
       smokingPolicy = Value(smokingPolicy),
       paymentPolicy = Value(paymentPolicy),
       coverChargeYen = Value(coverChargeYen),
       otoshi = Value(otoshi),
       englishMenu = Value(englishMenu),
       lastVerifiedAt = Value(lastVerifiedAt),
       verifiedMethod = Value(verifiedMethod),
       isActive = Value(isActive),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<Venue> custom({
    Expression<String>? id,
    Expression<String>? areaId,
    Expression<String>? nameJa,
    Expression<String>? nameEn,
    Expression<double>? lat,
    Expression<double>? lng,
    Expression<String>? addressJa,
    Expression<String>? addressEn,
    Expression<String>? phone,
    Expression<String>? websiteUrl,
    Expression<String>? notesJa,
    Expression<String>? notesEn,
    Expression<String>? seatingType,
    Expression<String>? smokingPolicy,
    Expression<String>? paymentPolicy,
    Expression<int>? coverChargeYen,
    Expression<String>? otoshi,
    Expression<String>? englishMenu,
    Expression<int>? lastVerifiedAt,
    Expression<String>? verifiedMethod,
    Expression<int>? isActive,
    Expression<int>? createdAt,
    Expression<int>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (areaId != null) 'area_id': areaId,
      if (nameJa != null) 'name_ja': nameJa,
      if (nameEn != null) 'name_en': nameEn,
      if (lat != null) 'lat': lat,
      if (lng != null) 'lng': lng,
      if (addressJa != null) 'address_ja': addressJa,
      if (addressEn != null) 'address_en': addressEn,
      if (phone != null) 'phone': phone,
      if (websiteUrl != null) 'website_url': websiteUrl,
      if (notesJa != null) 'notes_ja': notesJa,
      if (notesEn != null) 'notes_en': notesEn,
      if (seatingType != null) 'seating_type': seatingType,
      if (smokingPolicy != null) 'smoking_policy': smokingPolicy,
      if (paymentPolicy != null) 'payment_policy': paymentPolicy,
      if (coverChargeYen != null) 'cover_charge_yen': coverChargeYen,
      if (otoshi != null) 'otoshi': otoshi,
      if (englishMenu != null) 'english_menu': englishMenu,
      if (lastVerifiedAt != null) 'last_verified_at': lastVerifiedAt,
      if (verifiedMethod != null) 'verified_method': verifiedMethod,
      if (isActive != null) 'is_active': isActive,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  VenuesCompanion copyWith({
    Value<String>? id,
    Value<String>? areaId,
    Value<String>? nameJa,
    Value<String>? nameEn,
    Value<double>? lat,
    Value<double>? lng,
    Value<String>? addressJa,
    Value<String>? addressEn,
    Value<String>? phone,
    Value<String>? websiteUrl,
    Value<String>? notesJa,
    Value<String>? notesEn,
    Value<String>? seatingType,
    Value<String>? smokingPolicy,
    Value<String>? paymentPolicy,
    Value<int>? coverChargeYen,
    Value<String>? otoshi,
    Value<String>? englishMenu,
    Value<int>? lastVerifiedAt,
    Value<String>? verifiedMethod,
    Value<int>? isActive,
    Value<int>? createdAt,
    Value<int>? updatedAt,
    Value<int>? rowid,
  }) {
    return VenuesCompanion(
      id: id ?? this.id,
      areaId: areaId ?? this.areaId,
      nameJa: nameJa ?? this.nameJa,
      nameEn: nameEn ?? this.nameEn,
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
      addressJa: addressJa ?? this.addressJa,
      addressEn: addressEn ?? this.addressEn,
      phone: phone ?? this.phone,
      websiteUrl: websiteUrl ?? this.websiteUrl,
      notesJa: notesJa ?? this.notesJa,
      notesEn: notesEn ?? this.notesEn,
      seatingType: seatingType ?? this.seatingType,
      smokingPolicy: smokingPolicy ?? this.smokingPolicy,
      paymentPolicy: paymentPolicy ?? this.paymentPolicy,
      coverChargeYen: coverChargeYen ?? this.coverChargeYen,
      otoshi: otoshi ?? this.otoshi,
      englishMenu: englishMenu ?? this.englishMenu,
      lastVerifiedAt: lastVerifiedAt ?? this.lastVerifiedAt,
      verifiedMethod: verifiedMethod ?? this.verifiedMethod,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (areaId.present) {
      map['area_id'] = Variable<String>(areaId.value);
    }
    if (nameJa.present) {
      map['name_ja'] = Variable<String>(nameJa.value);
    }
    if (nameEn.present) {
      map['name_en'] = Variable<String>(nameEn.value);
    }
    if (lat.present) {
      map['lat'] = Variable<double>(lat.value);
    }
    if (lng.present) {
      map['lng'] = Variable<double>(lng.value);
    }
    if (addressJa.present) {
      map['address_ja'] = Variable<String>(addressJa.value);
    }
    if (addressEn.present) {
      map['address_en'] = Variable<String>(addressEn.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (websiteUrl.present) {
      map['website_url'] = Variable<String>(websiteUrl.value);
    }
    if (notesJa.present) {
      map['notes_ja'] = Variable<String>(notesJa.value);
    }
    if (notesEn.present) {
      map['notes_en'] = Variable<String>(notesEn.value);
    }
    if (seatingType.present) {
      map['seating_type'] = Variable<String>(seatingType.value);
    }
    if (smokingPolicy.present) {
      map['smoking_policy'] = Variable<String>(smokingPolicy.value);
    }
    if (paymentPolicy.present) {
      map['payment_policy'] = Variable<String>(paymentPolicy.value);
    }
    if (coverChargeYen.present) {
      map['cover_charge_yen'] = Variable<int>(coverChargeYen.value);
    }
    if (otoshi.present) {
      map['otoshi'] = Variable<String>(otoshi.value);
    }
    if (englishMenu.present) {
      map['english_menu'] = Variable<String>(englishMenu.value);
    }
    if (lastVerifiedAt.present) {
      map['last_verified_at'] = Variable<int>(lastVerifiedAt.value);
    }
    if (verifiedMethod.present) {
      map['verified_method'] = Variable<String>(verifiedMethod.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<int>(isActive.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<int>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<int>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('VenuesCompanion(')
          ..write('id: $id, ')
          ..write('areaId: $areaId, ')
          ..write('nameJa: $nameJa, ')
          ..write('nameEn: $nameEn, ')
          ..write('lat: $lat, ')
          ..write('lng: $lng, ')
          ..write('addressJa: $addressJa, ')
          ..write('addressEn: $addressEn, ')
          ..write('phone: $phone, ')
          ..write('websiteUrl: $websiteUrl, ')
          ..write('notesJa: $notesJa, ')
          ..write('notesEn: $notesEn, ')
          ..write('seatingType: $seatingType, ')
          ..write('smokingPolicy: $smokingPolicy, ')
          ..write('paymentPolicy: $paymentPolicy, ')
          ..write('coverChargeYen: $coverChargeYen, ')
          ..write('otoshi: $otoshi, ')
          ..write('englishMenu: $englishMenu, ')
          ..write('lastVerifiedAt: $lastVerifiedAt, ')
          ..write('verifiedMethod: $verifiedMethod, ')
          ..write('isActive: $isActive, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $VenueCategoriesTable extends VenueCategories
    with TableInfo<$VenueCategoriesTable, VenueCategory> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $VenueCategoriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _venueIdMeta = const VerificationMeta(
    'venueId',
  );
  @override
  late final GeneratedColumn<String> venueId = GeneratedColumn<String>(
    'venue_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES venues (id)',
    ),
  );
  static const VerificationMeta _categoryIdMeta = const VerificationMeta(
    'categoryId',
  );
  @override
  late final GeneratedColumn<String> categoryId = GeneratedColumn<String>(
    'category_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES categories (id)',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [venueId, categoryId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'venue_categories';
  @override
  VerificationContext validateIntegrity(
    Insertable<VenueCategory> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('venue_id')) {
      context.handle(
        _venueIdMeta,
        venueId.isAcceptableOrUnknown(data['venue_id']!, _venueIdMeta),
      );
    } else if (isInserting) {
      context.missing(_venueIdMeta);
    }
    if (data.containsKey('category_id')) {
      context.handle(
        _categoryIdMeta,
        categoryId.isAcceptableOrUnknown(data['category_id']!, _categoryIdMeta),
      );
    } else if (isInserting) {
      context.missing(_categoryIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {venueId, categoryId};
  @override
  VenueCategory map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return VenueCategory(
      venueId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}venue_id'],
      )!,
      categoryId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}category_id'],
      )!,
    );
  }

  @override
  $VenueCategoriesTable createAlias(String alias) {
    return $VenueCategoriesTable(attachedDatabase, alias);
  }
}

class VenueCategory extends DataClass implements Insertable<VenueCategory> {
  final String venueId;
  final String categoryId;
  const VenueCategory({required this.venueId, required this.categoryId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['venue_id'] = Variable<String>(venueId);
    map['category_id'] = Variable<String>(categoryId);
    return map;
  }

  VenueCategoriesCompanion toCompanion(bool nullToAbsent) {
    return VenueCategoriesCompanion(
      venueId: Value(venueId),
      categoryId: Value(categoryId),
    );
  }

  factory VenueCategory.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return VenueCategory(
      venueId: serializer.fromJson<String>(json['venueId']),
      categoryId: serializer.fromJson<String>(json['categoryId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'venueId': serializer.toJson<String>(venueId),
      'categoryId': serializer.toJson<String>(categoryId),
    };
  }

  VenueCategory copyWith({String? venueId, String? categoryId}) =>
      VenueCategory(
        venueId: venueId ?? this.venueId,
        categoryId: categoryId ?? this.categoryId,
      );
  VenueCategory copyWithCompanion(VenueCategoriesCompanion data) {
    return VenueCategory(
      venueId: data.venueId.present ? data.venueId.value : this.venueId,
      categoryId: data.categoryId.present
          ? data.categoryId.value
          : this.categoryId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('VenueCategory(')
          ..write('venueId: $venueId, ')
          ..write('categoryId: $categoryId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(venueId, categoryId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is VenueCategory &&
          other.venueId == this.venueId &&
          other.categoryId == this.categoryId);
}

class VenueCategoriesCompanion extends UpdateCompanion<VenueCategory> {
  final Value<String> venueId;
  final Value<String> categoryId;
  final Value<int> rowid;
  const VenueCategoriesCompanion({
    this.venueId = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  VenueCategoriesCompanion.insert({
    required String venueId,
    required String categoryId,
    this.rowid = const Value.absent(),
  }) : venueId = Value(venueId),
       categoryId = Value(categoryId);
  static Insertable<VenueCategory> custom({
    Expression<String>? venueId,
    Expression<String>? categoryId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (venueId != null) 'venue_id': venueId,
      if (categoryId != null) 'category_id': categoryId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  VenueCategoriesCompanion copyWith({
    Value<String>? venueId,
    Value<String>? categoryId,
    Value<int>? rowid,
  }) {
    return VenueCategoriesCompanion(
      venueId: venueId ?? this.venueId,
      categoryId: categoryId ?? this.categoryId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (venueId.present) {
      map['venue_id'] = Variable<String>(venueId.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<String>(categoryId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('VenueCategoriesCompanion(')
          ..write('venueId: $venueId, ')
          ..write('categoryId: $categoryId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $OpeningHoursTable extends OpeningHours
    with TableInfo<$OpeningHoursTable, OpeningHour> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OpeningHoursTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _venueIdMeta = const VerificationMeta(
    'venueId',
  );
  @override
  late final GeneratedColumn<String> venueId = GeneratedColumn<String>(
    'venue_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES venues (id)',
    ),
  );
  static const VerificationMeta _dayOfWeekMeta = const VerificationMeta(
    'dayOfWeek',
  );
  @override
  late final GeneratedColumn<int> dayOfWeek = GeneratedColumn<int>(
    'day_of_week',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _openTimeMeta = const VerificationMeta(
    'openTime',
  );
  @override
  late final GeneratedColumn<String> openTime = GeneratedColumn<String>(
    'open_time',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _closeTimeMeta = const VerificationMeta(
    'closeTime',
  );
  @override
  late final GeneratedColumn<String> closeTime = GeneratedColumn<String>(
    'close_time',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _crossesMidnightMeta = const VerificationMeta(
    'crossesMidnight',
  );
  @override
  late final GeneratedColumn<int> crossesMidnight = GeneratedColumn<int>(
    'crosses_midnight',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _noteJaMeta = const VerificationMeta('noteJa');
  @override
  late final GeneratedColumn<String> noteJa = GeneratedColumn<String>(
    'note_ja',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _noteEnMeta = const VerificationMeta('noteEn');
  @override
  late final GeneratedColumn<String> noteEn = GeneratedColumn<String>(
    'note_en',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<int> isActive = GeneratedColumn<int>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    venueId,
    dayOfWeek,
    openTime,
    closeTime,
    crossesMidnight,
    noteJa,
    noteEn,
    isActive,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'opening_hours';
  @override
  VerificationContext validateIntegrity(
    Insertable<OpeningHour> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('venue_id')) {
      context.handle(
        _venueIdMeta,
        venueId.isAcceptableOrUnknown(data['venue_id']!, _venueIdMeta),
      );
    } else if (isInserting) {
      context.missing(_venueIdMeta);
    }
    if (data.containsKey('day_of_week')) {
      context.handle(
        _dayOfWeekMeta,
        dayOfWeek.isAcceptableOrUnknown(data['day_of_week']!, _dayOfWeekMeta),
      );
    } else if (isInserting) {
      context.missing(_dayOfWeekMeta);
    }
    if (data.containsKey('open_time')) {
      context.handle(
        _openTimeMeta,
        openTime.isAcceptableOrUnknown(data['open_time']!, _openTimeMeta),
      );
    } else if (isInserting) {
      context.missing(_openTimeMeta);
    }
    if (data.containsKey('close_time')) {
      context.handle(
        _closeTimeMeta,
        closeTime.isAcceptableOrUnknown(data['close_time']!, _closeTimeMeta),
      );
    } else if (isInserting) {
      context.missing(_closeTimeMeta);
    }
    if (data.containsKey('crosses_midnight')) {
      context.handle(
        _crossesMidnightMeta,
        crossesMidnight.isAcceptableOrUnknown(
          data['crosses_midnight']!,
          _crossesMidnightMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_crossesMidnightMeta);
    }
    if (data.containsKey('note_ja')) {
      context.handle(
        _noteJaMeta,
        noteJa.isAcceptableOrUnknown(data['note_ja']!, _noteJaMeta),
      );
    } else if (isInserting) {
      context.missing(_noteJaMeta);
    }
    if (data.containsKey('note_en')) {
      context.handle(
        _noteEnMeta,
        noteEn.isAcceptableOrUnknown(data['note_en']!, _noteEnMeta),
      );
    } else if (isInserting) {
      context.missing(_noteEnMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    } else if (isInserting) {
      context.missing(_isActiveMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  OpeningHour map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OpeningHour(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      venueId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}venue_id'],
      )!,
      dayOfWeek: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}day_of_week'],
      )!,
      openTime: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}open_time'],
      )!,
      closeTime: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}close_time'],
      )!,
      crossesMidnight: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}crosses_midnight'],
      )!,
      noteJa: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}note_ja'],
      )!,
      noteEn: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}note_en'],
      )!,
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}is_active'],
      )!,
    );
  }

  @override
  $OpeningHoursTable createAlias(String alias) {
    return $OpeningHoursTable(attachedDatabase, alias);
  }
}

class OpeningHour extends DataClass implements Insertable<OpeningHour> {
  final String id;
  final String venueId;
  final int dayOfWeek;
  final String openTime;
  final String closeTime;
  final int crossesMidnight;
  final String noteJa;
  final String noteEn;
  final int isActive;
  const OpeningHour({
    required this.id,
    required this.venueId,
    required this.dayOfWeek,
    required this.openTime,
    required this.closeTime,
    required this.crossesMidnight,
    required this.noteJa,
    required this.noteEn,
    required this.isActive,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['venue_id'] = Variable<String>(venueId);
    map['day_of_week'] = Variable<int>(dayOfWeek);
    map['open_time'] = Variable<String>(openTime);
    map['close_time'] = Variable<String>(closeTime);
    map['crosses_midnight'] = Variable<int>(crossesMidnight);
    map['note_ja'] = Variable<String>(noteJa);
    map['note_en'] = Variable<String>(noteEn);
    map['is_active'] = Variable<int>(isActive);
    return map;
  }

  OpeningHoursCompanion toCompanion(bool nullToAbsent) {
    return OpeningHoursCompanion(
      id: Value(id),
      venueId: Value(venueId),
      dayOfWeek: Value(dayOfWeek),
      openTime: Value(openTime),
      closeTime: Value(closeTime),
      crossesMidnight: Value(crossesMidnight),
      noteJa: Value(noteJa),
      noteEn: Value(noteEn),
      isActive: Value(isActive),
    );
  }

  factory OpeningHour.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OpeningHour(
      id: serializer.fromJson<String>(json['id']),
      venueId: serializer.fromJson<String>(json['venueId']),
      dayOfWeek: serializer.fromJson<int>(json['dayOfWeek']),
      openTime: serializer.fromJson<String>(json['openTime']),
      closeTime: serializer.fromJson<String>(json['closeTime']),
      crossesMidnight: serializer.fromJson<int>(json['crossesMidnight']),
      noteJa: serializer.fromJson<String>(json['noteJa']),
      noteEn: serializer.fromJson<String>(json['noteEn']),
      isActive: serializer.fromJson<int>(json['isActive']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'venueId': serializer.toJson<String>(venueId),
      'dayOfWeek': serializer.toJson<int>(dayOfWeek),
      'openTime': serializer.toJson<String>(openTime),
      'closeTime': serializer.toJson<String>(closeTime),
      'crossesMidnight': serializer.toJson<int>(crossesMidnight),
      'noteJa': serializer.toJson<String>(noteJa),
      'noteEn': serializer.toJson<String>(noteEn),
      'isActive': serializer.toJson<int>(isActive),
    };
  }

  OpeningHour copyWith({
    String? id,
    String? venueId,
    int? dayOfWeek,
    String? openTime,
    String? closeTime,
    int? crossesMidnight,
    String? noteJa,
    String? noteEn,
    int? isActive,
  }) => OpeningHour(
    id: id ?? this.id,
    venueId: venueId ?? this.venueId,
    dayOfWeek: dayOfWeek ?? this.dayOfWeek,
    openTime: openTime ?? this.openTime,
    closeTime: closeTime ?? this.closeTime,
    crossesMidnight: crossesMidnight ?? this.crossesMidnight,
    noteJa: noteJa ?? this.noteJa,
    noteEn: noteEn ?? this.noteEn,
    isActive: isActive ?? this.isActive,
  );
  OpeningHour copyWithCompanion(OpeningHoursCompanion data) {
    return OpeningHour(
      id: data.id.present ? data.id.value : this.id,
      venueId: data.venueId.present ? data.venueId.value : this.venueId,
      dayOfWeek: data.dayOfWeek.present ? data.dayOfWeek.value : this.dayOfWeek,
      openTime: data.openTime.present ? data.openTime.value : this.openTime,
      closeTime: data.closeTime.present ? data.closeTime.value : this.closeTime,
      crossesMidnight: data.crossesMidnight.present
          ? data.crossesMidnight.value
          : this.crossesMidnight,
      noteJa: data.noteJa.present ? data.noteJa.value : this.noteJa,
      noteEn: data.noteEn.present ? data.noteEn.value : this.noteEn,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
    );
  }

  @override
  String toString() {
    return (StringBuffer('OpeningHour(')
          ..write('id: $id, ')
          ..write('venueId: $venueId, ')
          ..write('dayOfWeek: $dayOfWeek, ')
          ..write('openTime: $openTime, ')
          ..write('closeTime: $closeTime, ')
          ..write('crossesMidnight: $crossesMidnight, ')
          ..write('noteJa: $noteJa, ')
          ..write('noteEn: $noteEn, ')
          ..write('isActive: $isActive')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    venueId,
    dayOfWeek,
    openTime,
    closeTime,
    crossesMidnight,
    noteJa,
    noteEn,
    isActive,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OpeningHour &&
          other.id == this.id &&
          other.venueId == this.venueId &&
          other.dayOfWeek == this.dayOfWeek &&
          other.openTime == this.openTime &&
          other.closeTime == this.closeTime &&
          other.crossesMidnight == this.crossesMidnight &&
          other.noteJa == this.noteJa &&
          other.noteEn == this.noteEn &&
          other.isActive == this.isActive);
}

class OpeningHoursCompanion extends UpdateCompanion<OpeningHour> {
  final Value<String> id;
  final Value<String> venueId;
  final Value<int> dayOfWeek;
  final Value<String> openTime;
  final Value<String> closeTime;
  final Value<int> crossesMidnight;
  final Value<String> noteJa;
  final Value<String> noteEn;
  final Value<int> isActive;
  final Value<int> rowid;
  const OpeningHoursCompanion({
    this.id = const Value.absent(),
    this.venueId = const Value.absent(),
    this.dayOfWeek = const Value.absent(),
    this.openTime = const Value.absent(),
    this.closeTime = const Value.absent(),
    this.crossesMidnight = const Value.absent(),
    this.noteJa = const Value.absent(),
    this.noteEn = const Value.absent(),
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OpeningHoursCompanion.insert({
    required String id,
    required String venueId,
    required int dayOfWeek,
    required String openTime,
    required String closeTime,
    required int crossesMidnight,
    required String noteJa,
    required String noteEn,
    required int isActive,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       venueId = Value(venueId),
       dayOfWeek = Value(dayOfWeek),
       openTime = Value(openTime),
       closeTime = Value(closeTime),
       crossesMidnight = Value(crossesMidnight),
       noteJa = Value(noteJa),
       noteEn = Value(noteEn),
       isActive = Value(isActive);
  static Insertable<OpeningHour> custom({
    Expression<String>? id,
    Expression<String>? venueId,
    Expression<int>? dayOfWeek,
    Expression<String>? openTime,
    Expression<String>? closeTime,
    Expression<int>? crossesMidnight,
    Expression<String>? noteJa,
    Expression<String>? noteEn,
    Expression<int>? isActive,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (venueId != null) 'venue_id': venueId,
      if (dayOfWeek != null) 'day_of_week': dayOfWeek,
      if (openTime != null) 'open_time': openTime,
      if (closeTime != null) 'close_time': closeTime,
      if (crossesMidnight != null) 'crosses_midnight': crossesMidnight,
      if (noteJa != null) 'note_ja': noteJa,
      if (noteEn != null) 'note_en': noteEn,
      if (isActive != null) 'is_active': isActive,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OpeningHoursCompanion copyWith({
    Value<String>? id,
    Value<String>? venueId,
    Value<int>? dayOfWeek,
    Value<String>? openTime,
    Value<String>? closeTime,
    Value<int>? crossesMidnight,
    Value<String>? noteJa,
    Value<String>? noteEn,
    Value<int>? isActive,
    Value<int>? rowid,
  }) {
    return OpeningHoursCompanion(
      id: id ?? this.id,
      venueId: venueId ?? this.venueId,
      dayOfWeek: dayOfWeek ?? this.dayOfWeek,
      openTime: openTime ?? this.openTime,
      closeTime: closeTime ?? this.closeTime,
      crossesMidnight: crossesMidnight ?? this.crossesMidnight,
      noteJa: noteJa ?? this.noteJa,
      noteEn: noteEn ?? this.noteEn,
      isActive: isActive ?? this.isActive,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (venueId.present) {
      map['venue_id'] = Variable<String>(venueId.value);
    }
    if (dayOfWeek.present) {
      map['day_of_week'] = Variable<int>(dayOfWeek.value);
    }
    if (openTime.present) {
      map['open_time'] = Variable<String>(openTime.value);
    }
    if (closeTime.present) {
      map['close_time'] = Variable<String>(closeTime.value);
    }
    if (crossesMidnight.present) {
      map['crosses_midnight'] = Variable<int>(crossesMidnight.value);
    }
    if (noteJa.present) {
      map['note_ja'] = Variable<String>(noteJa.value);
    }
    if (noteEn.present) {
      map['note_en'] = Variable<String>(noteEn.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<int>(isActive.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OpeningHoursCompanion(')
          ..write('id: $id, ')
          ..write('venueId: $venueId, ')
          ..write('dayOfWeek: $dayOfWeek, ')
          ..write('openTime: $openTime, ')
          ..write('closeTime: $closeTime, ')
          ..write('crossesMidnight: $crossesMidnight, ')
          ..write('noteJa: $noteJa, ')
          ..write('noteEn: $noteEn, ')
          ..write('isActive: $isActive, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $HappyHoursTable extends HappyHours
    with TableInfo<$HappyHoursTable, HappyHour> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HappyHoursTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _venueIdMeta = const VerificationMeta(
    'venueId',
  );
  @override
  late final GeneratedColumn<String> venueId = GeneratedColumn<String>(
    'venue_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES venues (id)',
    ),
  );
  static const VerificationMeta _dayOfWeekMeta = const VerificationMeta(
    'dayOfWeek',
  );
  @override
  late final GeneratedColumn<int> dayOfWeek = GeneratedColumn<int>(
    'day_of_week',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _startTimeMeta = const VerificationMeta(
    'startTime',
  );
  @override
  late final GeneratedColumn<String> startTime = GeneratedColumn<String>(
    'start_time',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _endTimeMeta = const VerificationMeta(
    'endTime',
  );
  @override
  late final GeneratedColumn<String> endTime = GeneratedColumn<String>(
    'end_time',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dealJaMeta = const VerificationMeta('dealJa');
  @override
  late final GeneratedColumn<String> dealJa = GeneratedColumn<String>(
    'deal_ja',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dealEnMeta = const VerificationMeta('dealEn');
  @override
  late final GeneratedColumn<String> dealEn = GeneratedColumn<String>(
    'deal_en',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _conditionsJaMeta = const VerificationMeta(
    'conditionsJa',
  );
  @override
  late final GeneratedColumn<String> conditionsJa = GeneratedColumn<String>(
    'conditions_ja',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _conditionsEnMeta = const VerificationMeta(
    'conditionsEn',
  );
  @override
  late final GeneratedColumn<String> conditionsEn = GeneratedColumn<String>(
    'conditions_en',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lastVerifiedAtMeta = const VerificationMeta(
    'lastVerifiedAt',
  );
  @override
  late final GeneratedColumn<int> lastVerifiedAt = GeneratedColumn<int>(
    'last_verified_at',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _verifiedMethodMeta = const VerificationMeta(
    'verifiedMethod',
  );
  @override
  late final GeneratedColumn<String> verifiedMethod = GeneratedColumn<String>(
    'verified_method',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<int> isActive = GeneratedColumn<int>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    venueId,
    dayOfWeek,
    startTime,
    endTime,
    dealJa,
    dealEn,
    conditionsJa,
    conditionsEn,
    lastVerifiedAt,
    verifiedMethod,
    isActive,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'happy_hours';
  @override
  VerificationContext validateIntegrity(
    Insertable<HappyHour> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('venue_id')) {
      context.handle(
        _venueIdMeta,
        venueId.isAcceptableOrUnknown(data['venue_id']!, _venueIdMeta),
      );
    } else if (isInserting) {
      context.missing(_venueIdMeta);
    }
    if (data.containsKey('day_of_week')) {
      context.handle(
        _dayOfWeekMeta,
        dayOfWeek.isAcceptableOrUnknown(data['day_of_week']!, _dayOfWeekMeta),
      );
    } else if (isInserting) {
      context.missing(_dayOfWeekMeta);
    }
    if (data.containsKey('start_time')) {
      context.handle(
        _startTimeMeta,
        startTime.isAcceptableOrUnknown(data['start_time']!, _startTimeMeta),
      );
    } else if (isInserting) {
      context.missing(_startTimeMeta);
    }
    if (data.containsKey('end_time')) {
      context.handle(
        _endTimeMeta,
        endTime.isAcceptableOrUnknown(data['end_time']!, _endTimeMeta),
      );
    } else if (isInserting) {
      context.missing(_endTimeMeta);
    }
    if (data.containsKey('deal_ja')) {
      context.handle(
        _dealJaMeta,
        dealJa.isAcceptableOrUnknown(data['deal_ja']!, _dealJaMeta),
      );
    } else if (isInserting) {
      context.missing(_dealJaMeta);
    }
    if (data.containsKey('deal_en')) {
      context.handle(
        _dealEnMeta,
        dealEn.isAcceptableOrUnknown(data['deal_en']!, _dealEnMeta),
      );
    } else if (isInserting) {
      context.missing(_dealEnMeta);
    }
    if (data.containsKey('conditions_ja')) {
      context.handle(
        _conditionsJaMeta,
        conditionsJa.isAcceptableOrUnknown(
          data['conditions_ja']!,
          _conditionsJaMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_conditionsJaMeta);
    }
    if (data.containsKey('conditions_en')) {
      context.handle(
        _conditionsEnMeta,
        conditionsEn.isAcceptableOrUnknown(
          data['conditions_en']!,
          _conditionsEnMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_conditionsEnMeta);
    }
    if (data.containsKey('last_verified_at')) {
      context.handle(
        _lastVerifiedAtMeta,
        lastVerifiedAt.isAcceptableOrUnknown(
          data['last_verified_at']!,
          _lastVerifiedAtMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_lastVerifiedAtMeta);
    }
    if (data.containsKey('verified_method')) {
      context.handle(
        _verifiedMethodMeta,
        verifiedMethod.isAcceptableOrUnknown(
          data['verified_method']!,
          _verifiedMethodMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_verifiedMethodMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    } else if (isInserting) {
      context.missing(_isActiveMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  HappyHour map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return HappyHour(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      venueId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}venue_id'],
      )!,
      dayOfWeek: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}day_of_week'],
      )!,
      startTime: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}start_time'],
      )!,
      endTime: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}end_time'],
      )!,
      dealJa: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}deal_ja'],
      )!,
      dealEn: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}deal_en'],
      )!,
      conditionsJa: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}conditions_ja'],
      )!,
      conditionsEn: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}conditions_en'],
      )!,
      lastVerifiedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}last_verified_at'],
      )!,
      verifiedMethod: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}verified_method'],
      )!,
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}is_active'],
      )!,
    );
  }

  @override
  $HappyHoursTable createAlias(String alias) {
    return $HappyHoursTable(attachedDatabase, alias);
  }
}

class HappyHour extends DataClass implements Insertable<HappyHour> {
  final String id;
  final String venueId;
  final int dayOfWeek;
  final String startTime;
  final String endTime;
  final String dealJa;
  final String dealEn;
  final String conditionsJa;
  final String conditionsEn;
  final int lastVerifiedAt;
  final String verifiedMethod;
  final int isActive;
  const HappyHour({
    required this.id,
    required this.venueId,
    required this.dayOfWeek,
    required this.startTime,
    required this.endTime,
    required this.dealJa,
    required this.dealEn,
    required this.conditionsJa,
    required this.conditionsEn,
    required this.lastVerifiedAt,
    required this.verifiedMethod,
    required this.isActive,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['venue_id'] = Variable<String>(venueId);
    map['day_of_week'] = Variable<int>(dayOfWeek);
    map['start_time'] = Variable<String>(startTime);
    map['end_time'] = Variable<String>(endTime);
    map['deal_ja'] = Variable<String>(dealJa);
    map['deal_en'] = Variable<String>(dealEn);
    map['conditions_ja'] = Variable<String>(conditionsJa);
    map['conditions_en'] = Variable<String>(conditionsEn);
    map['last_verified_at'] = Variable<int>(lastVerifiedAt);
    map['verified_method'] = Variable<String>(verifiedMethod);
    map['is_active'] = Variable<int>(isActive);
    return map;
  }

  HappyHoursCompanion toCompanion(bool nullToAbsent) {
    return HappyHoursCompanion(
      id: Value(id),
      venueId: Value(venueId),
      dayOfWeek: Value(dayOfWeek),
      startTime: Value(startTime),
      endTime: Value(endTime),
      dealJa: Value(dealJa),
      dealEn: Value(dealEn),
      conditionsJa: Value(conditionsJa),
      conditionsEn: Value(conditionsEn),
      lastVerifiedAt: Value(lastVerifiedAt),
      verifiedMethod: Value(verifiedMethod),
      isActive: Value(isActive),
    );
  }

  factory HappyHour.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HappyHour(
      id: serializer.fromJson<String>(json['id']),
      venueId: serializer.fromJson<String>(json['venueId']),
      dayOfWeek: serializer.fromJson<int>(json['dayOfWeek']),
      startTime: serializer.fromJson<String>(json['startTime']),
      endTime: serializer.fromJson<String>(json['endTime']),
      dealJa: serializer.fromJson<String>(json['dealJa']),
      dealEn: serializer.fromJson<String>(json['dealEn']),
      conditionsJa: serializer.fromJson<String>(json['conditionsJa']),
      conditionsEn: serializer.fromJson<String>(json['conditionsEn']),
      lastVerifiedAt: serializer.fromJson<int>(json['lastVerifiedAt']),
      verifiedMethod: serializer.fromJson<String>(json['verifiedMethod']),
      isActive: serializer.fromJson<int>(json['isActive']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'venueId': serializer.toJson<String>(venueId),
      'dayOfWeek': serializer.toJson<int>(dayOfWeek),
      'startTime': serializer.toJson<String>(startTime),
      'endTime': serializer.toJson<String>(endTime),
      'dealJa': serializer.toJson<String>(dealJa),
      'dealEn': serializer.toJson<String>(dealEn),
      'conditionsJa': serializer.toJson<String>(conditionsJa),
      'conditionsEn': serializer.toJson<String>(conditionsEn),
      'lastVerifiedAt': serializer.toJson<int>(lastVerifiedAt),
      'verifiedMethod': serializer.toJson<String>(verifiedMethod),
      'isActive': serializer.toJson<int>(isActive),
    };
  }

  HappyHour copyWith({
    String? id,
    String? venueId,
    int? dayOfWeek,
    String? startTime,
    String? endTime,
    String? dealJa,
    String? dealEn,
    String? conditionsJa,
    String? conditionsEn,
    int? lastVerifiedAt,
    String? verifiedMethod,
    int? isActive,
  }) => HappyHour(
    id: id ?? this.id,
    venueId: venueId ?? this.venueId,
    dayOfWeek: dayOfWeek ?? this.dayOfWeek,
    startTime: startTime ?? this.startTime,
    endTime: endTime ?? this.endTime,
    dealJa: dealJa ?? this.dealJa,
    dealEn: dealEn ?? this.dealEn,
    conditionsJa: conditionsJa ?? this.conditionsJa,
    conditionsEn: conditionsEn ?? this.conditionsEn,
    lastVerifiedAt: lastVerifiedAt ?? this.lastVerifiedAt,
    verifiedMethod: verifiedMethod ?? this.verifiedMethod,
    isActive: isActive ?? this.isActive,
  );
  HappyHour copyWithCompanion(HappyHoursCompanion data) {
    return HappyHour(
      id: data.id.present ? data.id.value : this.id,
      venueId: data.venueId.present ? data.venueId.value : this.venueId,
      dayOfWeek: data.dayOfWeek.present ? data.dayOfWeek.value : this.dayOfWeek,
      startTime: data.startTime.present ? data.startTime.value : this.startTime,
      endTime: data.endTime.present ? data.endTime.value : this.endTime,
      dealJa: data.dealJa.present ? data.dealJa.value : this.dealJa,
      dealEn: data.dealEn.present ? data.dealEn.value : this.dealEn,
      conditionsJa: data.conditionsJa.present
          ? data.conditionsJa.value
          : this.conditionsJa,
      conditionsEn: data.conditionsEn.present
          ? data.conditionsEn.value
          : this.conditionsEn,
      lastVerifiedAt: data.lastVerifiedAt.present
          ? data.lastVerifiedAt.value
          : this.lastVerifiedAt,
      verifiedMethod: data.verifiedMethod.present
          ? data.verifiedMethod.value
          : this.verifiedMethod,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
    );
  }

  @override
  String toString() {
    return (StringBuffer('HappyHour(')
          ..write('id: $id, ')
          ..write('venueId: $venueId, ')
          ..write('dayOfWeek: $dayOfWeek, ')
          ..write('startTime: $startTime, ')
          ..write('endTime: $endTime, ')
          ..write('dealJa: $dealJa, ')
          ..write('dealEn: $dealEn, ')
          ..write('conditionsJa: $conditionsJa, ')
          ..write('conditionsEn: $conditionsEn, ')
          ..write('lastVerifiedAt: $lastVerifiedAt, ')
          ..write('verifiedMethod: $verifiedMethod, ')
          ..write('isActive: $isActive')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    venueId,
    dayOfWeek,
    startTime,
    endTime,
    dealJa,
    dealEn,
    conditionsJa,
    conditionsEn,
    lastVerifiedAt,
    verifiedMethod,
    isActive,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HappyHour &&
          other.id == this.id &&
          other.venueId == this.venueId &&
          other.dayOfWeek == this.dayOfWeek &&
          other.startTime == this.startTime &&
          other.endTime == this.endTime &&
          other.dealJa == this.dealJa &&
          other.dealEn == this.dealEn &&
          other.conditionsJa == this.conditionsJa &&
          other.conditionsEn == this.conditionsEn &&
          other.lastVerifiedAt == this.lastVerifiedAt &&
          other.verifiedMethod == this.verifiedMethod &&
          other.isActive == this.isActive);
}

class HappyHoursCompanion extends UpdateCompanion<HappyHour> {
  final Value<String> id;
  final Value<String> venueId;
  final Value<int> dayOfWeek;
  final Value<String> startTime;
  final Value<String> endTime;
  final Value<String> dealJa;
  final Value<String> dealEn;
  final Value<String> conditionsJa;
  final Value<String> conditionsEn;
  final Value<int> lastVerifiedAt;
  final Value<String> verifiedMethod;
  final Value<int> isActive;
  final Value<int> rowid;
  const HappyHoursCompanion({
    this.id = const Value.absent(),
    this.venueId = const Value.absent(),
    this.dayOfWeek = const Value.absent(),
    this.startTime = const Value.absent(),
    this.endTime = const Value.absent(),
    this.dealJa = const Value.absent(),
    this.dealEn = const Value.absent(),
    this.conditionsJa = const Value.absent(),
    this.conditionsEn = const Value.absent(),
    this.lastVerifiedAt = const Value.absent(),
    this.verifiedMethod = const Value.absent(),
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  HappyHoursCompanion.insert({
    required String id,
    required String venueId,
    required int dayOfWeek,
    required String startTime,
    required String endTime,
    required String dealJa,
    required String dealEn,
    required String conditionsJa,
    required String conditionsEn,
    required int lastVerifiedAt,
    required String verifiedMethod,
    required int isActive,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       venueId = Value(venueId),
       dayOfWeek = Value(dayOfWeek),
       startTime = Value(startTime),
       endTime = Value(endTime),
       dealJa = Value(dealJa),
       dealEn = Value(dealEn),
       conditionsJa = Value(conditionsJa),
       conditionsEn = Value(conditionsEn),
       lastVerifiedAt = Value(lastVerifiedAt),
       verifiedMethod = Value(verifiedMethod),
       isActive = Value(isActive);
  static Insertable<HappyHour> custom({
    Expression<String>? id,
    Expression<String>? venueId,
    Expression<int>? dayOfWeek,
    Expression<String>? startTime,
    Expression<String>? endTime,
    Expression<String>? dealJa,
    Expression<String>? dealEn,
    Expression<String>? conditionsJa,
    Expression<String>? conditionsEn,
    Expression<int>? lastVerifiedAt,
    Expression<String>? verifiedMethod,
    Expression<int>? isActive,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (venueId != null) 'venue_id': venueId,
      if (dayOfWeek != null) 'day_of_week': dayOfWeek,
      if (startTime != null) 'start_time': startTime,
      if (endTime != null) 'end_time': endTime,
      if (dealJa != null) 'deal_ja': dealJa,
      if (dealEn != null) 'deal_en': dealEn,
      if (conditionsJa != null) 'conditions_ja': conditionsJa,
      if (conditionsEn != null) 'conditions_en': conditionsEn,
      if (lastVerifiedAt != null) 'last_verified_at': lastVerifiedAt,
      if (verifiedMethod != null) 'verified_method': verifiedMethod,
      if (isActive != null) 'is_active': isActive,
      if (rowid != null) 'rowid': rowid,
    });
  }

  HappyHoursCompanion copyWith({
    Value<String>? id,
    Value<String>? venueId,
    Value<int>? dayOfWeek,
    Value<String>? startTime,
    Value<String>? endTime,
    Value<String>? dealJa,
    Value<String>? dealEn,
    Value<String>? conditionsJa,
    Value<String>? conditionsEn,
    Value<int>? lastVerifiedAt,
    Value<String>? verifiedMethod,
    Value<int>? isActive,
    Value<int>? rowid,
  }) {
    return HappyHoursCompanion(
      id: id ?? this.id,
      venueId: venueId ?? this.venueId,
      dayOfWeek: dayOfWeek ?? this.dayOfWeek,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      dealJa: dealJa ?? this.dealJa,
      dealEn: dealEn ?? this.dealEn,
      conditionsJa: conditionsJa ?? this.conditionsJa,
      conditionsEn: conditionsEn ?? this.conditionsEn,
      lastVerifiedAt: lastVerifiedAt ?? this.lastVerifiedAt,
      verifiedMethod: verifiedMethod ?? this.verifiedMethod,
      isActive: isActive ?? this.isActive,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (venueId.present) {
      map['venue_id'] = Variable<String>(venueId.value);
    }
    if (dayOfWeek.present) {
      map['day_of_week'] = Variable<int>(dayOfWeek.value);
    }
    if (startTime.present) {
      map['start_time'] = Variable<String>(startTime.value);
    }
    if (endTime.present) {
      map['end_time'] = Variable<String>(endTime.value);
    }
    if (dealJa.present) {
      map['deal_ja'] = Variable<String>(dealJa.value);
    }
    if (dealEn.present) {
      map['deal_en'] = Variable<String>(dealEn.value);
    }
    if (conditionsJa.present) {
      map['conditions_ja'] = Variable<String>(conditionsJa.value);
    }
    if (conditionsEn.present) {
      map['conditions_en'] = Variable<String>(conditionsEn.value);
    }
    if (lastVerifiedAt.present) {
      map['last_verified_at'] = Variable<int>(lastVerifiedAt.value);
    }
    if (verifiedMethod.present) {
      map['verified_method'] = Variable<String>(verifiedMethod.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<int>(isActive.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HappyHoursCompanion(')
          ..write('id: $id, ')
          ..write('venueId: $venueId, ')
          ..write('dayOfWeek: $dayOfWeek, ')
          ..write('startTime: $startTime, ')
          ..write('endTime: $endTime, ')
          ..write('dealJa: $dealJa, ')
          ..write('dealEn: $dealEn, ')
          ..write('conditionsJa: $conditionsJa, ')
          ..write('conditionsEn: $conditionsEn, ')
          ..write('lastVerifiedAt: $lastVerifiedAt, ')
          ..write('verifiedMethod: $verifiedMethod, ')
          ..write('isActive: $isActive, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $OffersTable extends Offers with TableInfo<$OffersTable, Offer> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OffersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _venueIdMeta = const VerificationMeta(
    'venueId',
  );
  @override
  late final GeneratedColumn<String> venueId = GeneratedColumn<String>(
    'venue_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES venues (id)',
    ),
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleJaMeta = const VerificationMeta(
    'titleJa',
  );
  @override
  late final GeneratedColumn<String> titleJa = GeneratedColumn<String>(
    'title_ja',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleEnMeta = const VerificationMeta(
    'titleEn',
  );
  @override
  late final GeneratedColumn<String> titleEn = GeneratedColumn<String>(
    'title_en',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _conditionJaMeta = const VerificationMeta(
    'conditionJa',
  );
  @override
  late final GeneratedColumn<String> conditionJa = GeneratedColumn<String>(
    'condition_ja',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _conditionEnMeta = const VerificationMeta(
    'conditionEn',
  );
  @override
  late final GeneratedColumn<String> conditionEn = GeneratedColumn<String>(
    'condition_en',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _detailsJaMeta = const VerificationMeta(
    'detailsJa',
  );
  @override
  late final GeneratedColumn<String> detailsJa = GeneratedColumn<String>(
    'details_ja',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _detailsEnMeta = const VerificationMeta(
    'detailsEn',
  );
  @override
  late final GeneratedColumn<String> detailsEn = GeneratedColumn<String>(
    'details_en',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _validFromMeta = const VerificationMeta(
    'validFrom',
  );
  @override
  late final GeneratedColumn<int> validFrom = GeneratedColumn<int>(
    'valid_from',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _validToMeta = const VerificationMeta(
    'validTo',
  );
  @override
  late final GeneratedColumn<int> validTo = GeneratedColumn<int>(
    'valid_to',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<int> isActive = GeneratedColumn<int>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lastVerifiedAtMeta = const VerificationMeta(
    'lastVerifiedAt',
  );
  @override
  late final GeneratedColumn<int> lastVerifiedAt = GeneratedColumn<int>(
    'last_verified_at',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _redeemModeMeta = const VerificationMeta(
    'redeemMode',
  );
  @override
  late final GeneratedColumn<String> redeemMode = GeneratedColumn<String>(
    'redeem_mode',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _redeemHintJaMeta = const VerificationMeta(
    'redeemHintJa',
  );
  @override
  late final GeneratedColumn<String> redeemHintJa = GeneratedColumn<String>(
    'redeem_hint_ja',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _redeemHintEnMeta = const VerificationMeta(
    'redeemHintEn',
  );
  @override
  late final GeneratedColumn<String> redeemHintEn = GeneratedColumn<String>(
    'redeem_hint_en',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    venueId,
    type,
    titleJa,
    titleEn,
    conditionJa,
    conditionEn,
    detailsJa,
    detailsEn,
    validFrom,
    validTo,
    isActive,
    lastVerifiedAt,
    redeemMode,
    redeemHintJa,
    redeemHintEn,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'offers';
  @override
  VerificationContext validateIntegrity(
    Insertable<Offer> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('venue_id')) {
      context.handle(
        _venueIdMeta,
        venueId.isAcceptableOrUnknown(data['venue_id']!, _venueIdMeta),
      );
    } else if (isInserting) {
      context.missing(_venueIdMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('title_ja')) {
      context.handle(
        _titleJaMeta,
        titleJa.isAcceptableOrUnknown(data['title_ja']!, _titleJaMeta),
      );
    } else if (isInserting) {
      context.missing(_titleJaMeta);
    }
    if (data.containsKey('title_en')) {
      context.handle(
        _titleEnMeta,
        titleEn.isAcceptableOrUnknown(data['title_en']!, _titleEnMeta),
      );
    } else if (isInserting) {
      context.missing(_titleEnMeta);
    }
    if (data.containsKey('condition_ja')) {
      context.handle(
        _conditionJaMeta,
        conditionJa.isAcceptableOrUnknown(
          data['condition_ja']!,
          _conditionJaMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_conditionJaMeta);
    }
    if (data.containsKey('condition_en')) {
      context.handle(
        _conditionEnMeta,
        conditionEn.isAcceptableOrUnknown(
          data['condition_en']!,
          _conditionEnMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_conditionEnMeta);
    }
    if (data.containsKey('details_ja')) {
      context.handle(
        _detailsJaMeta,
        detailsJa.isAcceptableOrUnknown(data['details_ja']!, _detailsJaMeta),
      );
    } else if (isInserting) {
      context.missing(_detailsJaMeta);
    }
    if (data.containsKey('details_en')) {
      context.handle(
        _detailsEnMeta,
        detailsEn.isAcceptableOrUnknown(data['details_en']!, _detailsEnMeta),
      );
    } else if (isInserting) {
      context.missing(_detailsEnMeta);
    }
    if (data.containsKey('valid_from')) {
      context.handle(
        _validFromMeta,
        validFrom.isAcceptableOrUnknown(data['valid_from']!, _validFromMeta),
      );
    } else if (isInserting) {
      context.missing(_validFromMeta);
    }
    if (data.containsKey('valid_to')) {
      context.handle(
        _validToMeta,
        validTo.isAcceptableOrUnknown(data['valid_to']!, _validToMeta),
      );
    } else if (isInserting) {
      context.missing(_validToMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    } else if (isInserting) {
      context.missing(_isActiveMeta);
    }
    if (data.containsKey('last_verified_at')) {
      context.handle(
        _lastVerifiedAtMeta,
        lastVerifiedAt.isAcceptableOrUnknown(
          data['last_verified_at']!,
          _lastVerifiedAtMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_lastVerifiedAtMeta);
    }
    if (data.containsKey('redeem_mode')) {
      context.handle(
        _redeemModeMeta,
        redeemMode.isAcceptableOrUnknown(data['redeem_mode']!, _redeemModeMeta),
      );
    } else if (isInserting) {
      context.missing(_redeemModeMeta);
    }
    if (data.containsKey('redeem_hint_ja')) {
      context.handle(
        _redeemHintJaMeta,
        redeemHintJa.isAcceptableOrUnknown(
          data['redeem_hint_ja']!,
          _redeemHintJaMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_redeemHintJaMeta);
    }
    if (data.containsKey('redeem_hint_en')) {
      context.handle(
        _redeemHintEnMeta,
        redeemHintEn.isAcceptableOrUnknown(
          data['redeem_hint_en']!,
          _redeemHintEnMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_redeemHintEnMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Offer map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Offer(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      venueId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}venue_id'],
      )!,
      type: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}type'],
      )!,
      titleJa: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title_ja'],
      )!,
      titleEn: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title_en'],
      )!,
      conditionJa: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}condition_ja'],
      )!,
      conditionEn: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}condition_en'],
      )!,
      detailsJa: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}details_ja'],
      )!,
      detailsEn: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}details_en'],
      )!,
      validFrom: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}valid_from'],
      )!,
      validTo: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}valid_to'],
      )!,
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}is_active'],
      )!,
      lastVerifiedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}last_verified_at'],
      )!,
      redeemMode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}redeem_mode'],
      )!,
      redeemHintJa: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}redeem_hint_ja'],
      )!,
      redeemHintEn: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}redeem_hint_en'],
      )!,
    );
  }

  @override
  $OffersTable createAlias(String alias) {
    return $OffersTable(attachedDatabase, alias);
  }
}

class Offer extends DataClass implements Insertable<Offer> {
  final String id;
  final String venueId;
  final String type;
  final String titleJa;
  final String titleEn;
  final String conditionJa;
  final String conditionEn;
  final String detailsJa;
  final String detailsEn;
  final int validFrom;
  final int validTo;
  final int isActive;
  final int lastVerifiedAt;
  final String redeemMode;
  final String redeemHintJa;
  final String redeemHintEn;
  const Offer({
    required this.id,
    required this.venueId,
    required this.type,
    required this.titleJa,
    required this.titleEn,
    required this.conditionJa,
    required this.conditionEn,
    required this.detailsJa,
    required this.detailsEn,
    required this.validFrom,
    required this.validTo,
    required this.isActive,
    required this.lastVerifiedAt,
    required this.redeemMode,
    required this.redeemHintJa,
    required this.redeemHintEn,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['venue_id'] = Variable<String>(venueId);
    map['type'] = Variable<String>(type);
    map['title_ja'] = Variable<String>(titleJa);
    map['title_en'] = Variable<String>(titleEn);
    map['condition_ja'] = Variable<String>(conditionJa);
    map['condition_en'] = Variable<String>(conditionEn);
    map['details_ja'] = Variable<String>(detailsJa);
    map['details_en'] = Variable<String>(detailsEn);
    map['valid_from'] = Variable<int>(validFrom);
    map['valid_to'] = Variable<int>(validTo);
    map['is_active'] = Variable<int>(isActive);
    map['last_verified_at'] = Variable<int>(lastVerifiedAt);
    map['redeem_mode'] = Variable<String>(redeemMode);
    map['redeem_hint_ja'] = Variable<String>(redeemHintJa);
    map['redeem_hint_en'] = Variable<String>(redeemHintEn);
    return map;
  }

  OffersCompanion toCompanion(bool nullToAbsent) {
    return OffersCompanion(
      id: Value(id),
      venueId: Value(venueId),
      type: Value(type),
      titleJa: Value(titleJa),
      titleEn: Value(titleEn),
      conditionJa: Value(conditionJa),
      conditionEn: Value(conditionEn),
      detailsJa: Value(detailsJa),
      detailsEn: Value(detailsEn),
      validFrom: Value(validFrom),
      validTo: Value(validTo),
      isActive: Value(isActive),
      lastVerifiedAt: Value(lastVerifiedAt),
      redeemMode: Value(redeemMode),
      redeemHintJa: Value(redeemHintJa),
      redeemHintEn: Value(redeemHintEn),
    );
  }

  factory Offer.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Offer(
      id: serializer.fromJson<String>(json['id']),
      venueId: serializer.fromJson<String>(json['venueId']),
      type: serializer.fromJson<String>(json['type']),
      titleJa: serializer.fromJson<String>(json['titleJa']),
      titleEn: serializer.fromJson<String>(json['titleEn']),
      conditionJa: serializer.fromJson<String>(json['conditionJa']),
      conditionEn: serializer.fromJson<String>(json['conditionEn']),
      detailsJa: serializer.fromJson<String>(json['detailsJa']),
      detailsEn: serializer.fromJson<String>(json['detailsEn']),
      validFrom: serializer.fromJson<int>(json['validFrom']),
      validTo: serializer.fromJson<int>(json['validTo']),
      isActive: serializer.fromJson<int>(json['isActive']),
      lastVerifiedAt: serializer.fromJson<int>(json['lastVerifiedAt']),
      redeemMode: serializer.fromJson<String>(json['redeemMode']),
      redeemHintJa: serializer.fromJson<String>(json['redeemHintJa']),
      redeemHintEn: serializer.fromJson<String>(json['redeemHintEn']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'venueId': serializer.toJson<String>(venueId),
      'type': serializer.toJson<String>(type),
      'titleJa': serializer.toJson<String>(titleJa),
      'titleEn': serializer.toJson<String>(titleEn),
      'conditionJa': serializer.toJson<String>(conditionJa),
      'conditionEn': serializer.toJson<String>(conditionEn),
      'detailsJa': serializer.toJson<String>(detailsJa),
      'detailsEn': serializer.toJson<String>(detailsEn),
      'validFrom': serializer.toJson<int>(validFrom),
      'validTo': serializer.toJson<int>(validTo),
      'isActive': serializer.toJson<int>(isActive),
      'lastVerifiedAt': serializer.toJson<int>(lastVerifiedAt),
      'redeemMode': serializer.toJson<String>(redeemMode),
      'redeemHintJa': serializer.toJson<String>(redeemHintJa),
      'redeemHintEn': serializer.toJson<String>(redeemHintEn),
    };
  }

  Offer copyWith({
    String? id,
    String? venueId,
    String? type,
    String? titleJa,
    String? titleEn,
    String? conditionJa,
    String? conditionEn,
    String? detailsJa,
    String? detailsEn,
    int? validFrom,
    int? validTo,
    int? isActive,
    int? lastVerifiedAt,
    String? redeemMode,
    String? redeemHintJa,
    String? redeemHintEn,
  }) => Offer(
    id: id ?? this.id,
    venueId: venueId ?? this.venueId,
    type: type ?? this.type,
    titleJa: titleJa ?? this.titleJa,
    titleEn: titleEn ?? this.titleEn,
    conditionJa: conditionJa ?? this.conditionJa,
    conditionEn: conditionEn ?? this.conditionEn,
    detailsJa: detailsJa ?? this.detailsJa,
    detailsEn: detailsEn ?? this.detailsEn,
    validFrom: validFrom ?? this.validFrom,
    validTo: validTo ?? this.validTo,
    isActive: isActive ?? this.isActive,
    lastVerifiedAt: lastVerifiedAt ?? this.lastVerifiedAt,
    redeemMode: redeemMode ?? this.redeemMode,
    redeemHintJa: redeemHintJa ?? this.redeemHintJa,
    redeemHintEn: redeemHintEn ?? this.redeemHintEn,
  );
  Offer copyWithCompanion(OffersCompanion data) {
    return Offer(
      id: data.id.present ? data.id.value : this.id,
      venueId: data.venueId.present ? data.venueId.value : this.venueId,
      type: data.type.present ? data.type.value : this.type,
      titleJa: data.titleJa.present ? data.titleJa.value : this.titleJa,
      titleEn: data.titleEn.present ? data.titleEn.value : this.titleEn,
      conditionJa: data.conditionJa.present
          ? data.conditionJa.value
          : this.conditionJa,
      conditionEn: data.conditionEn.present
          ? data.conditionEn.value
          : this.conditionEn,
      detailsJa: data.detailsJa.present ? data.detailsJa.value : this.detailsJa,
      detailsEn: data.detailsEn.present ? data.detailsEn.value : this.detailsEn,
      validFrom: data.validFrom.present ? data.validFrom.value : this.validFrom,
      validTo: data.validTo.present ? data.validTo.value : this.validTo,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      lastVerifiedAt: data.lastVerifiedAt.present
          ? data.lastVerifiedAt.value
          : this.lastVerifiedAt,
      redeemMode: data.redeemMode.present
          ? data.redeemMode.value
          : this.redeemMode,
      redeemHintJa: data.redeemHintJa.present
          ? data.redeemHintJa.value
          : this.redeemHintJa,
      redeemHintEn: data.redeemHintEn.present
          ? data.redeemHintEn.value
          : this.redeemHintEn,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Offer(')
          ..write('id: $id, ')
          ..write('venueId: $venueId, ')
          ..write('type: $type, ')
          ..write('titleJa: $titleJa, ')
          ..write('titleEn: $titleEn, ')
          ..write('conditionJa: $conditionJa, ')
          ..write('conditionEn: $conditionEn, ')
          ..write('detailsJa: $detailsJa, ')
          ..write('detailsEn: $detailsEn, ')
          ..write('validFrom: $validFrom, ')
          ..write('validTo: $validTo, ')
          ..write('isActive: $isActive, ')
          ..write('lastVerifiedAt: $lastVerifiedAt, ')
          ..write('redeemMode: $redeemMode, ')
          ..write('redeemHintJa: $redeemHintJa, ')
          ..write('redeemHintEn: $redeemHintEn')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    venueId,
    type,
    titleJa,
    titleEn,
    conditionJa,
    conditionEn,
    detailsJa,
    detailsEn,
    validFrom,
    validTo,
    isActive,
    lastVerifiedAt,
    redeemMode,
    redeemHintJa,
    redeemHintEn,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Offer &&
          other.id == this.id &&
          other.venueId == this.venueId &&
          other.type == this.type &&
          other.titleJa == this.titleJa &&
          other.titleEn == this.titleEn &&
          other.conditionJa == this.conditionJa &&
          other.conditionEn == this.conditionEn &&
          other.detailsJa == this.detailsJa &&
          other.detailsEn == this.detailsEn &&
          other.validFrom == this.validFrom &&
          other.validTo == this.validTo &&
          other.isActive == this.isActive &&
          other.lastVerifiedAt == this.lastVerifiedAt &&
          other.redeemMode == this.redeemMode &&
          other.redeemHintJa == this.redeemHintJa &&
          other.redeemHintEn == this.redeemHintEn);
}

class OffersCompanion extends UpdateCompanion<Offer> {
  final Value<String> id;
  final Value<String> venueId;
  final Value<String> type;
  final Value<String> titleJa;
  final Value<String> titleEn;
  final Value<String> conditionJa;
  final Value<String> conditionEn;
  final Value<String> detailsJa;
  final Value<String> detailsEn;
  final Value<int> validFrom;
  final Value<int> validTo;
  final Value<int> isActive;
  final Value<int> lastVerifiedAt;
  final Value<String> redeemMode;
  final Value<String> redeemHintJa;
  final Value<String> redeemHintEn;
  final Value<int> rowid;
  const OffersCompanion({
    this.id = const Value.absent(),
    this.venueId = const Value.absent(),
    this.type = const Value.absent(),
    this.titleJa = const Value.absent(),
    this.titleEn = const Value.absent(),
    this.conditionJa = const Value.absent(),
    this.conditionEn = const Value.absent(),
    this.detailsJa = const Value.absent(),
    this.detailsEn = const Value.absent(),
    this.validFrom = const Value.absent(),
    this.validTo = const Value.absent(),
    this.isActive = const Value.absent(),
    this.lastVerifiedAt = const Value.absent(),
    this.redeemMode = const Value.absent(),
    this.redeemHintJa = const Value.absent(),
    this.redeemHintEn = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OffersCompanion.insert({
    required String id,
    required String venueId,
    required String type,
    required String titleJa,
    required String titleEn,
    required String conditionJa,
    required String conditionEn,
    required String detailsJa,
    required String detailsEn,
    required int validFrom,
    required int validTo,
    required int isActive,
    required int lastVerifiedAt,
    required String redeemMode,
    required String redeemHintJa,
    required String redeemHintEn,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       venueId = Value(venueId),
       type = Value(type),
       titleJa = Value(titleJa),
       titleEn = Value(titleEn),
       conditionJa = Value(conditionJa),
       conditionEn = Value(conditionEn),
       detailsJa = Value(detailsJa),
       detailsEn = Value(detailsEn),
       validFrom = Value(validFrom),
       validTo = Value(validTo),
       isActive = Value(isActive),
       lastVerifiedAt = Value(lastVerifiedAt),
       redeemMode = Value(redeemMode),
       redeemHintJa = Value(redeemHintJa),
       redeemHintEn = Value(redeemHintEn);
  static Insertable<Offer> custom({
    Expression<String>? id,
    Expression<String>? venueId,
    Expression<String>? type,
    Expression<String>? titleJa,
    Expression<String>? titleEn,
    Expression<String>? conditionJa,
    Expression<String>? conditionEn,
    Expression<String>? detailsJa,
    Expression<String>? detailsEn,
    Expression<int>? validFrom,
    Expression<int>? validTo,
    Expression<int>? isActive,
    Expression<int>? lastVerifiedAt,
    Expression<String>? redeemMode,
    Expression<String>? redeemHintJa,
    Expression<String>? redeemHintEn,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (venueId != null) 'venue_id': venueId,
      if (type != null) 'type': type,
      if (titleJa != null) 'title_ja': titleJa,
      if (titleEn != null) 'title_en': titleEn,
      if (conditionJa != null) 'condition_ja': conditionJa,
      if (conditionEn != null) 'condition_en': conditionEn,
      if (detailsJa != null) 'details_ja': detailsJa,
      if (detailsEn != null) 'details_en': detailsEn,
      if (validFrom != null) 'valid_from': validFrom,
      if (validTo != null) 'valid_to': validTo,
      if (isActive != null) 'is_active': isActive,
      if (lastVerifiedAt != null) 'last_verified_at': lastVerifiedAt,
      if (redeemMode != null) 'redeem_mode': redeemMode,
      if (redeemHintJa != null) 'redeem_hint_ja': redeemHintJa,
      if (redeemHintEn != null) 'redeem_hint_en': redeemHintEn,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OffersCompanion copyWith({
    Value<String>? id,
    Value<String>? venueId,
    Value<String>? type,
    Value<String>? titleJa,
    Value<String>? titleEn,
    Value<String>? conditionJa,
    Value<String>? conditionEn,
    Value<String>? detailsJa,
    Value<String>? detailsEn,
    Value<int>? validFrom,
    Value<int>? validTo,
    Value<int>? isActive,
    Value<int>? lastVerifiedAt,
    Value<String>? redeemMode,
    Value<String>? redeemHintJa,
    Value<String>? redeemHintEn,
    Value<int>? rowid,
  }) {
    return OffersCompanion(
      id: id ?? this.id,
      venueId: venueId ?? this.venueId,
      type: type ?? this.type,
      titleJa: titleJa ?? this.titleJa,
      titleEn: titleEn ?? this.titleEn,
      conditionJa: conditionJa ?? this.conditionJa,
      conditionEn: conditionEn ?? this.conditionEn,
      detailsJa: detailsJa ?? this.detailsJa,
      detailsEn: detailsEn ?? this.detailsEn,
      validFrom: validFrom ?? this.validFrom,
      validTo: validTo ?? this.validTo,
      isActive: isActive ?? this.isActive,
      lastVerifiedAt: lastVerifiedAt ?? this.lastVerifiedAt,
      redeemMode: redeemMode ?? this.redeemMode,
      redeemHintJa: redeemHintJa ?? this.redeemHintJa,
      redeemHintEn: redeemHintEn ?? this.redeemHintEn,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (venueId.present) {
      map['venue_id'] = Variable<String>(venueId.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (titleJa.present) {
      map['title_ja'] = Variable<String>(titleJa.value);
    }
    if (titleEn.present) {
      map['title_en'] = Variable<String>(titleEn.value);
    }
    if (conditionJa.present) {
      map['condition_ja'] = Variable<String>(conditionJa.value);
    }
    if (conditionEn.present) {
      map['condition_en'] = Variable<String>(conditionEn.value);
    }
    if (detailsJa.present) {
      map['details_ja'] = Variable<String>(detailsJa.value);
    }
    if (detailsEn.present) {
      map['details_en'] = Variable<String>(detailsEn.value);
    }
    if (validFrom.present) {
      map['valid_from'] = Variable<int>(validFrom.value);
    }
    if (validTo.present) {
      map['valid_to'] = Variable<int>(validTo.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<int>(isActive.value);
    }
    if (lastVerifiedAt.present) {
      map['last_verified_at'] = Variable<int>(lastVerifiedAt.value);
    }
    if (redeemMode.present) {
      map['redeem_mode'] = Variable<String>(redeemMode.value);
    }
    if (redeemHintJa.present) {
      map['redeem_hint_ja'] = Variable<String>(redeemHintJa.value);
    }
    if (redeemHintEn.present) {
      map['redeem_hint_en'] = Variable<String>(redeemHintEn.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OffersCompanion(')
          ..write('id: $id, ')
          ..write('venueId: $venueId, ')
          ..write('type: $type, ')
          ..write('titleJa: $titleJa, ')
          ..write('titleEn: $titleEn, ')
          ..write('conditionJa: $conditionJa, ')
          ..write('conditionEn: $conditionEn, ')
          ..write('detailsJa: $detailsJa, ')
          ..write('detailsEn: $detailsEn, ')
          ..write('validFrom: $validFrom, ')
          ..write('validTo: $validTo, ')
          ..write('isActive: $isActive, ')
          ..write('lastVerifiedAt: $lastVerifiedAt, ')
          ..write('redeemMode: $redeemMode, ')
          ..write('redeemHintJa: $redeemHintJa, ')
          ..write('redeemHintEn: $redeemHintEn, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $NightlifePricingTable extends NightlifePricing
    with TableInfo<$NightlifePricingTable, NightlifePricingData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NightlifePricingTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _venueIdMeta = const VerificationMeta(
    'venueId',
  );
  @override
  late final GeneratedColumn<String> venueId = GeneratedColumn<String>(
    'venue_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES venues (id)',
    ),
  );
  static const VerificationMeta _firstSetMinutesMeta = const VerificationMeta(
    'firstSetMinutes',
  );
  @override
  late final GeneratedColumn<int> firstSetMinutes = GeneratedColumn<int>(
    'first_set_minutes',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _firstSetPriceYenMeta = const VerificationMeta(
    'firstSetPriceYen',
  );
  @override
  late final GeneratedColumn<int> firstSetPriceYen = GeneratedColumn<int>(
    'first_set_price_yen',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _castDrinkPriceYenMeta = const VerificationMeta(
    'castDrinkPriceYen',
  );
  @override
  late final GeneratedColumn<int> castDrinkPriceYen = GeneratedColumn<int>(
    'cast_drink_price_yen',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _additionalFeesNoteJaMeta =
      const VerificationMeta('additionalFeesNoteJa');
  @override
  late final GeneratedColumn<String> additionalFeesNoteJa =
      GeneratedColumn<String>(
        'additional_fees_note_ja',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _additionalFeesNoteEnMeta =
      const VerificationMeta('additionalFeesNoteEn');
  @override
  late final GeneratedColumn<String> additionalFeesNoteEn =
      GeneratedColumn<String>(
        'additional_fees_note_en',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _lastVerifiedAtMeta = const VerificationMeta(
    'lastVerifiedAt',
  );
  @override
  late final GeneratedColumn<int> lastVerifiedAt = GeneratedColumn<int>(
    'last_verified_at',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _verifiedMethodMeta = const VerificationMeta(
    'verifiedMethod',
  );
  @override
  late final GeneratedColumn<String> verifiedMethod = GeneratedColumn<String>(
    'verified_method',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    venueId,
    firstSetMinutes,
    firstSetPriceYen,
    castDrinkPriceYen,
    additionalFeesNoteJa,
    additionalFeesNoteEn,
    lastVerifiedAt,
    verifiedMethod,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'nightlife_pricing';
  @override
  VerificationContext validateIntegrity(
    Insertable<NightlifePricingData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('venue_id')) {
      context.handle(
        _venueIdMeta,
        venueId.isAcceptableOrUnknown(data['venue_id']!, _venueIdMeta),
      );
    } else if (isInserting) {
      context.missing(_venueIdMeta);
    }
    if (data.containsKey('first_set_minutes')) {
      context.handle(
        _firstSetMinutesMeta,
        firstSetMinutes.isAcceptableOrUnknown(
          data['first_set_minutes']!,
          _firstSetMinutesMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_firstSetMinutesMeta);
    }
    if (data.containsKey('first_set_price_yen')) {
      context.handle(
        _firstSetPriceYenMeta,
        firstSetPriceYen.isAcceptableOrUnknown(
          data['first_set_price_yen']!,
          _firstSetPriceYenMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_firstSetPriceYenMeta);
    }
    if (data.containsKey('cast_drink_price_yen')) {
      context.handle(
        _castDrinkPriceYenMeta,
        castDrinkPriceYen.isAcceptableOrUnknown(
          data['cast_drink_price_yen']!,
          _castDrinkPriceYenMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_castDrinkPriceYenMeta);
    }
    if (data.containsKey('additional_fees_note_ja')) {
      context.handle(
        _additionalFeesNoteJaMeta,
        additionalFeesNoteJa.isAcceptableOrUnknown(
          data['additional_fees_note_ja']!,
          _additionalFeesNoteJaMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_additionalFeesNoteJaMeta);
    }
    if (data.containsKey('additional_fees_note_en')) {
      context.handle(
        _additionalFeesNoteEnMeta,
        additionalFeesNoteEn.isAcceptableOrUnknown(
          data['additional_fees_note_en']!,
          _additionalFeesNoteEnMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_additionalFeesNoteEnMeta);
    }
    if (data.containsKey('last_verified_at')) {
      context.handle(
        _lastVerifiedAtMeta,
        lastVerifiedAt.isAcceptableOrUnknown(
          data['last_verified_at']!,
          _lastVerifiedAtMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_lastVerifiedAtMeta);
    }
    if (data.containsKey('verified_method')) {
      context.handle(
        _verifiedMethodMeta,
        verifiedMethod.isAcceptableOrUnknown(
          data['verified_method']!,
          _verifiedMethodMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_verifiedMethodMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {venueId};
  @override
  NightlifePricingData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return NightlifePricingData(
      venueId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}venue_id'],
      )!,
      firstSetMinutes: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}first_set_minutes'],
      )!,
      firstSetPriceYen: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}first_set_price_yen'],
      )!,
      castDrinkPriceYen: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}cast_drink_price_yen'],
      )!,
      additionalFeesNoteJa: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}additional_fees_note_ja'],
      )!,
      additionalFeesNoteEn: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}additional_fees_note_en'],
      )!,
      lastVerifiedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}last_verified_at'],
      )!,
      verifiedMethod: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}verified_method'],
      )!,
    );
  }

  @override
  $NightlifePricingTable createAlias(String alias) {
    return $NightlifePricingTable(attachedDatabase, alias);
  }
}

class NightlifePricingData extends DataClass
    implements Insertable<NightlifePricingData> {
  final String venueId;
  final int firstSetMinutes;
  final int firstSetPriceYen;
  final int castDrinkPriceYen;
  final String additionalFeesNoteJa;
  final String additionalFeesNoteEn;
  final int lastVerifiedAt;
  final String verifiedMethod;
  const NightlifePricingData({
    required this.venueId,
    required this.firstSetMinutes,
    required this.firstSetPriceYen,
    required this.castDrinkPriceYen,
    required this.additionalFeesNoteJa,
    required this.additionalFeesNoteEn,
    required this.lastVerifiedAt,
    required this.verifiedMethod,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['venue_id'] = Variable<String>(venueId);
    map['first_set_minutes'] = Variable<int>(firstSetMinutes);
    map['first_set_price_yen'] = Variable<int>(firstSetPriceYen);
    map['cast_drink_price_yen'] = Variable<int>(castDrinkPriceYen);
    map['additional_fees_note_ja'] = Variable<String>(additionalFeesNoteJa);
    map['additional_fees_note_en'] = Variable<String>(additionalFeesNoteEn);
    map['last_verified_at'] = Variable<int>(lastVerifiedAt);
    map['verified_method'] = Variable<String>(verifiedMethod);
    return map;
  }

  NightlifePricingCompanion toCompanion(bool nullToAbsent) {
    return NightlifePricingCompanion(
      venueId: Value(venueId),
      firstSetMinutes: Value(firstSetMinutes),
      firstSetPriceYen: Value(firstSetPriceYen),
      castDrinkPriceYen: Value(castDrinkPriceYen),
      additionalFeesNoteJa: Value(additionalFeesNoteJa),
      additionalFeesNoteEn: Value(additionalFeesNoteEn),
      lastVerifiedAt: Value(lastVerifiedAt),
      verifiedMethod: Value(verifiedMethod),
    );
  }

  factory NightlifePricingData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return NightlifePricingData(
      venueId: serializer.fromJson<String>(json['venueId']),
      firstSetMinutes: serializer.fromJson<int>(json['firstSetMinutes']),
      firstSetPriceYen: serializer.fromJson<int>(json['firstSetPriceYen']),
      castDrinkPriceYen: serializer.fromJson<int>(json['castDrinkPriceYen']),
      additionalFeesNoteJa: serializer.fromJson<String>(
        json['additionalFeesNoteJa'],
      ),
      additionalFeesNoteEn: serializer.fromJson<String>(
        json['additionalFeesNoteEn'],
      ),
      lastVerifiedAt: serializer.fromJson<int>(json['lastVerifiedAt']),
      verifiedMethod: serializer.fromJson<String>(json['verifiedMethod']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'venueId': serializer.toJson<String>(venueId),
      'firstSetMinutes': serializer.toJson<int>(firstSetMinutes),
      'firstSetPriceYen': serializer.toJson<int>(firstSetPriceYen),
      'castDrinkPriceYen': serializer.toJson<int>(castDrinkPriceYen),
      'additionalFeesNoteJa': serializer.toJson<String>(additionalFeesNoteJa),
      'additionalFeesNoteEn': serializer.toJson<String>(additionalFeesNoteEn),
      'lastVerifiedAt': serializer.toJson<int>(lastVerifiedAt),
      'verifiedMethod': serializer.toJson<String>(verifiedMethod),
    };
  }

  NightlifePricingData copyWith({
    String? venueId,
    int? firstSetMinutes,
    int? firstSetPriceYen,
    int? castDrinkPriceYen,
    String? additionalFeesNoteJa,
    String? additionalFeesNoteEn,
    int? lastVerifiedAt,
    String? verifiedMethod,
  }) => NightlifePricingData(
    venueId: venueId ?? this.venueId,
    firstSetMinutes: firstSetMinutes ?? this.firstSetMinutes,
    firstSetPriceYen: firstSetPriceYen ?? this.firstSetPriceYen,
    castDrinkPriceYen: castDrinkPriceYen ?? this.castDrinkPriceYen,
    additionalFeesNoteJa: additionalFeesNoteJa ?? this.additionalFeesNoteJa,
    additionalFeesNoteEn: additionalFeesNoteEn ?? this.additionalFeesNoteEn,
    lastVerifiedAt: lastVerifiedAt ?? this.lastVerifiedAt,
    verifiedMethod: verifiedMethod ?? this.verifiedMethod,
  );
  NightlifePricingData copyWithCompanion(NightlifePricingCompanion data) {
    return NightlifePricingData(
      venueId: data.venueId.present ? data.venueId.value : this.venueId,
      firstSetMinutes: data.firstSetMinutes.present
          ? data.firstSetMinutes.value
          : this.firstSetMinutes,
      firstSetPriceYen: data.firstSetPriceYen.present
          ? data.firstSetPriceYen.value
          : this.firstSetPriceYen,
      castDrinkPriceYen: data.castDrinkPriceYen.present
          ? data.castDrinkPriceYen.value
          : this.castDrinkPriceYen,
      additionalFeesNoteJa: data.additionalFeesNoteJa.present
          ? data.additionalFeesNoteJa.value
          : this.additionalFeesNoteJa,
      additionalFeesNoteEn: data.additionalFeesNoteEn.present
          ? data.additionalFeesNoteEn.value
          : this.additionalFeesNoteEn,
      lastVerifiedAt: data.lastVerifiedAt.present
          ? data.lastVerifiedAt.value
          : this.lastVerifiedAt,
      verifiedMethod: data.verifiedMethod.present
          ? data.verifiedMethod.value
          : this.verifiedMethod,
    );
  }

  @override
  String toString() {
    return (StringBuffer('NightlifePricingData(')
          ..write('venueId: $venueId, ')
          ..write('firstSetMinutes: $firstSetMinutes, ')
          ..write('firstSetPriceYen: $firstSetPriceYen, ')
          ..write('castDrinkPriceYen: $castDrinkPriceYen, ')
          ..write('additionalFeesNoteJa: $additionalFeesNoteJa, ')
          ..write('additionalFeesNoteEn: $additionalFeesNoteEn, ')
          ..write('lastVerifiedAt: $lastVerifiedAt, ')
          ..write('verifiedMethod: $verifiedMethod')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    venueId,
    firstSetMinutes,
    firstSetPriceYen,
    castDrinkPriceYen,
    additionalFeesNoteJa,
    additionalFeesNoteEn,
    lastVerifiedAt,
    verifiedMethod,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NightlifePricingData &&
          other.venueId == this.venueId &&
          other.firstSetMinutes == this.firstSetMinutes &&
          other.firstSetPriceYen == this.firstSetPriceYen &&
          other.castDrinkPriceYen == this.castDrinkPriceYen &&
          other.additionalFeesNoteJa == this.additionalFeesNoteJa &&
          other.additionalFeesNoteEn == this.additionalFeesNoteEn &&
          other.lastVerifiedAt == this.lastVerifiedAt &&
          other.verifiedMethod == this.verifiedMethod);
}

class NightlifePricingCompanion extends UpdateCompanion<NightlifePricingData> {
  final Value<String> venueId;
  final Value<int> firstSetMinutes;
  final Value<int> firstSetPriceYen;
  final Value<int> castDrinkPriceYen;
  final Value<String> additionalFeesNoteJa;
  final Value<String> additionalFeesNoteEn;
  final Value<int> lastVerifiedAt;
  final Value<String> verifiedMethod;
  final Value<int> rowid;
  const NightlifePricingCompanion({
    this.venueId = const Value.absent(),
    this.firstSetMinutes = const Value.absent(),
    this.firstSetPriceYen = const Value.absent(),
    this.castDrinkPriceYen = const Value.absent(),
    this.additionalFeesNoteJa = const Value.absent(),
    this.additionalFeesNoteEn = const Value.absent(),
    this.lastVerifiedAt = const Value.absent(),
    this.verifiedMethod = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  NightlifePricingCompanion.insert({
    required String venueId,
    required int firstSetMinutes,
    required int firstSetPriceYen,
    required int castDrinkPriceYen,
    required String additionalFeesNoteJa,
    required String additionalFeesNoteEn,
    required int lastVerifiedAt,
    required String verifiedMethod,
    this.rowid = const Value.absent(),
  }) : venueId = Value(venueId),
       firstSetMinutes = Value(firstSetMinutes),
       firstSetPriceYen = Value(firstSetPriceYen),
       castDrinkPriceYen = Value(castDrinkPriceYen),
       additionalFeesNoteJa = Value(additionalFeesNoteJa),
       additionalFeesNoteEn = Value(additionalFeesNoteEn),
       lastVerifiedAt = Value(lastVerifiedAt),
       verifiedMethod = Value(verifiedMethod);
  static Insertable<NightlifePricingData> custom({
    Expression<String>? venueId,
    Expression<int>? firstSetMinutes,
    Expression<int>? firstSetPriceYen,
    Expression<int>? castDrinkPriceYen,
    Expression<String>? additionalFeesNoteJa,
    Expression<String>? additionalFeesNoteEn,
    Expression<int>? lastVerifiedAt,
    Expression<String>? verifiedMethod,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (venueId != null) 'venue_id': venueId,
      if (firstSetMinutes != null) 'first_set_minutes': firstSetMinutes,
      if (firstSetPriceYen != null) 'first_set_price_yen': firstSetPriceYen,
      if (castDrinkPriceYen != null) 'cast_drink_price_yen': castDrinkPriceYen,
      if (additionalFeesNoteJa != null)
        'additional_fees_note_ja': additionalFeesNoteJa,
      if (additionalFeesNoteEn != null)
        'additional_fees_note_en': additionalFeesNoteEn,
      if (lastVerifiedAt != null) 'last_verified_at': lastVerifiedAt,
      if (verifiedMethod != null) 'verified_method': verifiedMethod,
      if (rowid != null) 'rowid': rowid,
    });
  }

  NightlifePricingCompanion copyWith({
    Value<String>? venueId,
    Value<int>? firstSetMinutes,
    Value<int>? firstSetPriceYen,
    Value<int>? castDrinkPriceYen,
    Value<String>? additionalFeesNoteJa,
    Value<String>? additionalFeesNoteEn,
    Value<int>? lastVerifiedAt,
    Value<String>? verifiedMethod,
    Value<int>? rowid,
  }) {
    return NightlifePricingCompanion(
      venueId: venueId ?? this.venueId,
      firstSetMinutes: firstSetMinutes ?? this.firstSetMinutes,
      firstSetPriceYen: firstSetPriceYen ?? this.firstSetPriceYen,
      castDrinkPriceYen: castDrinkPriceYen ?? this.castDrinkPriceYen,
      additionalFeesNoteJa: additionalFeesNoteJa ?? this.additionalFeesNoteJa,
      additionalFeesNoteEn: additionalFeesNoteEn ?? this.additionalFeesNoteEn,
      lastVerifiedAt: lastVerifiedAt ?? this.lastVerifiedAt,
      verifiedMethod: verifiedMethod ?? this.verifiedMethod,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (venueId.present) {
      map['venue_id'] = Variable<String>(venueId.value);
    }
    if (firstSetMinutes.present) {
      map['first_set_minutes'] = Variable<int>(firstSetMinutes.value);
    }
    if (firstSetPriceYen.present) {
      map['first_set_price_yen'] = Variable<int>(firstSetPriceYen.value);
    }
    if (castDrinkPriceYen.present) {
      map['cast_drink_price_yen'] = Variable<int>(castDrinkPriceYen.value);
    }
    if (additionalFeesNoteJa.present) {
      map['additional_fees_note_ja'] = Variable<String>(
        additionalFeesNoteJa.value,
      );
    }
    if (additionalFeesNoteEn.present) {
      map['additional_fees_note_en'] = Variable<String>(
        additionalFeesNoteEn.value,
      );
    }
    if (lastVerifiedAt.present) {
      map['last_verified_at'] = Variable<int>(lastVerifiedAt.value);
    }
    if (verifiedMethod.present) {
      map['verified_method'] = Variable<String>(verifiedMethod.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NightlifePricingCompanion(')
          ..write('venueId: $venueId, ')
          ..write('firstSetMinutes: $firstSetMinutes, ')
          ..write('firstSetPriceYen: $firstSetPriceYen, ')
          ..write('castDrinkPriceYen: $castDrinkPriceYen, ')
          ..write('additionalFeesNoteJa: $additionalFeesNoteJa, ')
          ..write('additionalFeesNoteEn: $additionalFeesNoteEn, ')
          ..write('lastVerifiedAt: $lastVerifiedAt, ')
          ..write('verifiedMethod: $verifiedMethod, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $RoutesTable extends Routes with TableInfo<$RoutesTable, Route> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RoutesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _areaIdMeta = const VerificationMeta('areaId');
  @override
  late final GeneratedColumn<String> areaId = GeneratedColumn<String>(
    'area_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES areas (id)',
    ),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<int> createdAt = GeneratedColumn<int>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _startLatMeta = const VerificationMeta(
    'startLat',
  );
  @override
  late final GeneratedColumn<double> startLat = GeneratedColumn<double>(
    'start_lat',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _startLngMeta = const VerificationMeta(
    'startLng',
  );
  @override
  late final GeneratedColumn<double> startLng = GeneratedColumn<double>(
    'start_lng',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _totalMinutesMeta = const VerificationMeta(
    'totalMinutes',
  );
  @override
  late final GeneratedColumn<int> totalMinutes = GeneratedColumn<int>(
    'total_minutes',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _budgetYenMeta = const VerificationMeta(
    'budgetYen',
  );
  @override
  late final GeneratedColumn<int> budgetYen = GeneratedColumn<int>(
    'budget_yen',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _moodMeta = const VerificationMeta('mood');
  @override
  late final GeneratedColumn<String> mood = GeneratedColumn<String>(
    'mood',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nightlifeEnabledMeta = const VerificationMeta(
    'nightlifeEnabled',
  );
  @override
  late final GeneratedColumn<int> nightlifeEnabled = GeneratedColumn<int>(
    'nightlife_enabled',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _constraintsJsonMeta = const VerificationMeta(
    'constraintsJson',
  );
  @override
  late final GeneratedColumn<String> constraintsJson = GeneratedColumn<String>(
    'constraints_json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    areaId,
    createdAt,
    startLat,
    startLng,
    totalMinutes,
    budgetYen,
    mood,
    nightlifeEnabled,
    status,
    constraintsJson,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'routes';
  @override
  VerificationContext validateIntegrity(
    Insertable<Route> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('area_id')) {
      context.handle(
        _areaIdMeta,
        areaId.isAcceptableOrUnknown(data['area_id']!, _areaIdMeta),
      );
    } else if (isInserting) {
      context.missing(_areaIdMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('start_lat')) {
      context.handle(
        _startLatMeta,
        startLat.isAcceptableOrUnknown(data['start_lat']!, _startLatMeta),
      );
    } else if (isInserting) {
      context.missing(_startLatMeta);
    }
    if (data.containsKey('start_lng')) {
      context.handle(
        _startLngMeta,
        startLng.isAcceptableOrUnknown(data['start_lng']!, _startLngMeta),
      );
    } else if (isInserting) {
      context.missing(_startLngMeta);
    }
    if (data.containsKey('total_minutes')) {
      context.handle(
        _totalMinutesMeta,
        totalMinutes.isAcceptableOrUnknown(
          data['total_minutes']!,
          _totalMinutesMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_totalMinutesMeta);
    }
    if (data.containsKey('budget_yen')) {
      context.handle(
        _budgetYenMeta,
        budgetYen.isAcceptableOrUnknown(data['budget_yen']!, _budgetYenMeta),
      );
    } else if (isInserting) {
      context.missing(_budgetYenMeta);
    }
    if (data.containsKey('mood')) {
      context.handle(
        _moodMeta,
        mood.isAcceptableOrUnknown(data['mood']!, _moodMeta),
      );
    } else if (isInserting) {
      context.missing(_moodMeta);
    }
    if (data.containsKey('nightlife_enabled')) {
      context.handle(
        _nightlifeEnabledMeta,
        nightlifeEnabled.isAcceptableOrUnknown(
          data['nightlife_enabled']!,
          _nightlifeEnabledMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_nightlifeEnabledMeta);
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('constraints_json')) {
      context.handle(
        _constraintsJsonMeta,
        constraintsJson.isAcceptableOrUnknown(
          data['constraints_json']!,
          _constraintsJsonMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_constraintsJsonMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Route map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Route(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      areaId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}area_id'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}created_at'],
      )!,
      startLat: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}start_lat'],
      )!,
      startLng: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}start_lng'],
      )!,
      totalMinutes: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}total_minutes'],
      )!,
      budgetYen: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}budget_yen'],
      )!,
      mood: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}mood'],
      )!,
      nightlifeEnabled: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}nightlife_enabled'],
      )!,
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      constraintsJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}constraints_json'],
      )!,
    );
  }

  @override
  $RoutesTable createAlias(String alias) {
    return $RoutesTable(attachedDatabase, alias);
  }
}

class Route extends DataClass implements Insertable<Route> {
  final String id;
  final String areaId;
  final int createdAt;
  final double startLat;
  final double startLng;
  final int totalMinutes;
  final int budgetYen;
  final String mood;
  final int nightlifeEnabled;
  final String status;
  final String constraintsJson;
  const Route({
    required this.id,
    required this.areaId,
    required this.createdAt,
    required this.startLat,
    required this.startLng,
    required this.totalMinutes,
    required this.budgetYen,
    required this.mood,
    required this.nightlifeEnabled,
    required this.status,
    required this.constraintsJson,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['area_id'] = Variable<String>(areaId);
    map['created_at'] = Variable<int>(createdAt);
    map['start_lat'] = Variable<double>(startLat);
    map['start_lng'] = Variable<double>(startLng);
    map['total_minutes'] = Variable<int>(totalMinutes);
    map['budget_yen'] = Variable<int>(budgetYen);
    map['mood'] = Variable<String>(mood);
    map['nightlife_enabled'] = Variable<int>(nightlifeEnabled);
    map['status'] = Variable<String>(status);
    map['constraints_json'] = Variable<String>(constraintsJson);
    return map;
  }

  RoutesCompanion toCompanion(bool nullToAbsent) {
    return RoutesCompanion(
      id: Value(id),
      areaId: Value(areaId),
      createdAt: Value(createdAt),
      startLat: Value(startLat),
      startLng: Value(startLng),
      totalMinutes: Value(totalMinutes),
      budgetYen: Value(budgetYen),
      mood: Value(mood),
      nightlifeEnabled: Value(nightlifeEnabled),
      status: Value(status),
      constraintsJson: Value(constraintsJson),
    );
  }

  factory Route.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Route(
      id: serializer.fromJson<String>(json['id']),
      areaId: serializer.fromJson<String>(json['areaId']),
      createdAt: serializer.fromJson<int>(json['createdAt']),
      startLat: serializer.fromJson<double>(json['startLat']),
      startLng: serializer.fromJson<double>(json['startLng']),
      totalMinutes: serializer.fromJson<int>(json['totalMinutes']),
      budgetYen: serializer.fromJson<int>(json['budgetYen']),
      mood: serializer.fromJson<String>(json['mood']),
      nightlifeEnabled: serializer.fromJson<int>(json['nightlifeEnabled']),
      status: serializer.fromJson<String>(json['status']),
      constraintsJson: serializer.fromJson<String>(json['constraintsJson']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'areaId': serializer.toJson<String>(areaId),
      'createdAt': serializer.toJson<int>(createdAt),
      'startLat': serializer.toJson<double>(startLat),
      'startLng': serializer.toJson<double>(startLng),
      'totalMinutes': serializer.toJson<int>(totalMinutes),
      'budgetYen': serializer.toJson<int>(budgetYen),
      'mood': serializer.toJson<String>(mood),
      'nightlifeEnabled': serializer.toJson<int>(nightlifeEnabled),
      'status': serializer.toJson<String>(status),
      'constraintsJson': serializer.toJson<String>(constraintsJson),
    };
  }

  Route copyWith({
    String? id,
    String? areaId,
    int? createdAt,
    double? startLat,
    double? startLng,
    int? totalMinutes,
    int? budgetYen,
    String? mood,
    int? nightlifeEnabled,
    String? status,
    String? constraintsJson,
  }) => Route(
    id: id ?? this.id,
    areaId: areaId ?? this.areaId,
    createdAt: createdAt ?? this.createdAt,
    startLat: startLat ?? this.startLat,
    startLng: startLng ?? this.startLng,
    totalMinutes: totalMinutes ?? this.totalMinutes,
    budgetYen: budgetYen ?? this.budgetYen,
    mood: mood ?? this.mood,
    nightlifeEnabled: nightlifeEnabled ?? this.nightlifeEnabled,
    status: status ?? this.status,
    constraintsJson: constraintsJson ?? this.constraintsJson,
  );
  Route copyWithCompanion(RoutesCompanion data) {
    return Route(
      id: data.id.present ? data.id.value : this.id,
      areaId: data.areaId.present ? data.areaId.value : this.areaId,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      startLat: data.startLat.present ? data.startLat.value : this.startLat,
      startLng: data.startLng.present ? data.startLng.value : this.startLng,
      totalMinutes: data.totalMinutes.present
          ? data.totalMinutes.value
          : this.totalMinutes,
      budgetYen: data.budgetYen.present ? data.budgetYen.value : this.budgetYen,
      mood: data.mood.present ? data.mood.value : this.mood,
      nightlifeEnabled: data.nightlifeEnabled.present
          ? data.nightlifeEnabled.value
          : this.nightlifeEnabled,
      status: data.status.present ? data.status.value : this.status,
      constraintsJson: data.constraintsJson.present
          ? data.constraintsJson.value
          : this.constraintsJson,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Route(')
          ..write('id: $id, ')
          ..write('areaId: $areaId, ')
          ..write('createdAt: $createdAt, ')
          ..write('startLat: $startLat, ')
          ..write('startLng: $startLng, ')
          ..write('totalMinutes: $totalMinutes, ')
          ..write('budgetYen: $budgetYen, ')
          ..write('mood: $mood, ')
          ..write('nightlifeEnabled: $nightlifeEnabled, ')
          ..write('status: $status, ')
          ..write('constraintsJson: $constraintsJson')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    areaId,
    createdAt,
    startLat,
    startLng,
    totalMinutes,
    budgetYen,
    mood,
    nightlifeEnabled,
    status,
    constraintsJson,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Route &&
          other.id == this.id &&
          other.areaId == this.areaId &&
          other.createdAt == this.createdAt &&
          other.startLat == this.startLat &&
          other.startLng == this.startLng &&
          other.totalMinutes == this.totalMinutes &&
          other.budgetYen == this.budgetYen &&
          other.mood == this.mood &&
          other.nightlifeEnabled == this.nightlifeEnabled &&
          other.status == this.status &&
          other.constraintsJson == this.constraintsJson);
}

class RoutesCompanion extends UpdateCompanion<Route> {
  final Value<String> id;
  final Value<String> areaId;
  final Value<int> createdAt;
  final Value<double> startLat;
  final Value<double> startLng;
  final Value<int> totalMinutes;
  final Value<int> budgetYen;
  final Value<String> mood;
  final Value<int> nightlifeEnabled;
  final Value<String> status;
  final Value<String> constraintsJson;
  final Value<int> rowid;
  const RoutesCompanion({
    this.id = const Value.absent(),
    this.areaId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.startLat = const Value.absent(),
    this.startLng = const Value.absent(),
    this.totalMinutes = const Value.absent(),
    this.budgetYen = const Value.absent(),
    this.mood = const Value.absent(),
    this.nightlifeEnabled = const Value.absent(),
    this.status = const Value.absent(),
    this.constraintsJson = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  RoutesCompanion.insert({
    required String id,
    required String areaId,
    required int createdAt,
    required double startLat,
    required double startLng,
    required int totalMinutes,
    required int budgetYen,
    required String mood,
    required int nightlifeEnabled,
    required String status,
    required String constraintsJson,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       areaId = Value(areaId),
       createdAt = Value(createdAt),
       startLat = Value(startLat),
       startLng = Value(startLng),
       totalMinutes = Value(totalMinutes),
       budgetYen = Value(budgetYen),
       mood = Value(mood),
       nightlifeEnabled = Value(nightlifeEnabled),
       status = Value(status),
       constraintsJson = Value(constraintsJson);
  static Insertable<Route> custom({
    Expression<String>? id,
    Expression<String>? areaId,
    Expression<int>? createdAt,
    Expression<double>? startLat,
    Expression<double>? startLng,
    Expression<int>? totalMinutes,
    Expression<int>? budgetYen,
    Expression<String>? mood,
    Expression<int>? nightlifeEnabled,
    Expression<String>? status,
    Expression<String>? constraintsJson,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (areaId != null) 'area_id': areaId,
      if (createdAt != null) 'created_at': createdAt,
      if (startLat != null) 'start_lat': startLat,
      if (startLng != null) 'start_lng': startLng,
      if (totalMinutes != null) 'total_minutes': totalMinutes,
      if (budgetYen != null) 'budget_yen': budgetYen,
      if (mood != null) 'mood': mood,
      if (nightlifeEnabled != null) 'nightlife_enabled': nightlifeEnabled,
      if (status != null) 'status': status,
      if (constraintsJson != null) 'constraints_json': constraintsJson,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RoutesCompanion copyWith({
    Value<String>? id,
    Value<String>? areaId,
    Value<int>? createdAt,
    Value<double>? startLat,
    Value<double>? startLng,
    Value<int>? totalMinutes,
    Value<int>? budgetYen,
    Value<String>? mood,
    Value<int>? nightlifeEnabled,
    Value<String>? status,
    Value<String>? constraintsJson,
    Value<int>? rowid,
  }) {
    return RoutesCompanion(
      id: id ?? this.id,
      areaId: areaId ?? this.areaId,
      createdAt: createdAt ?? this.createdAt,
      startLat: startLat ?? this.startLat,
      startLng: startLng ?? this.startLng,
      totalMinutes: totalMinutes ?? this.totalMinutes,
      budgetYen: budgetYen ?? this.budgetYen,
      mood: mood ?? this.mood,
      nightlifeEnabled: nightlifeEnabled ?? this.nightlifeEnabled,
      status: status ?? this.status,
      constraintsJson: constraintsJson ?? this.constraintsJson,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (areaId.present) {
      map['area_id'] = Variable<String>(areaId.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<int>(createdAt.value);
    }
    if (startLat.present) {
      map['start_lat'] = Variable<double>(startLat.value);
    }
    if (startLng.present) {
      map['start_lng'] = Variable<double>(startLng.value);
    }
    if (totalMinutes.present) {
      map['total_minutes'] = Variable<int>(totalMinutes.value);
    }
    if (budgetYen.present) {
      map['budget_yen'] = Variable<int>(budgetYen.value);
    }
    if (mood.present) {
      map['mood'] = Variable<String>(mood.value);
    }
    if (nightlifeEnabled.present) {
      map['nightlife_enabled'] = Variable<int>(nightlifeEnabled.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (constraintsJson.present) {
      map['constraints_json'] = Variable<String>(constraintsJson.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RoutesCompanion(')
          ..write('id: $id, ')
          ..write('areaId: $areaId, ')
          ..write('createdAt: $createdAt, ')
          ..write('startLat: $startLat, ')
          ..write('startLng: $startLng, ')
          ..write('totalMinutes: $totalMinutes, ')
          ..write('budgetYen: $budgetYen, ')
          ..write('mood: $mood, ')
          ..write('nightlifeEnabled: $nightlifeEnabled, ')
          ..write('status: $status, ')
          ..write('constraintsJson: $constraintsJson, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $RouteStopsTable extends RouteStops
    with TableInfo<$RouteStopsTable, RouteStop> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RouteStopsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _routeIdMeta = const VerificationMeta(
    'routeId',
  );
  @override
  late final GeneratedColumn<String> routeId = GeneratedColumn<String>(
    'route_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES routes (id)',
    ),
  );
  static const VerificationMeta _stopOrderMeta = const VerificationMeta(
    'stopOrder',
  );
  @override
  late final GeneratedColumn<int> stopOrder = GeneratedColumn<int>(
    'stop_order',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _venueIdMeta = const VerificationMeta(
    'venueId',
  );
  @override
  late final GeneratedColumn<String> venueId = GeneratedColumn<String>(
    'venue_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES venues (id)',
    ),
  );
  static const VerificationMeta _stayMinutesMeta = const VerificationMeta(
    'stayMinutes',
  );
  @override
  late final GeneratedColumn<int> stayMinutes = GeneratedColumn<int>(
    'stay_minutes',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _walkMinutesFromPrevMeta =
      const VerificationMeta('walkMinutesFromPrev');
  @override
  late final GeneratedColumn<int> walkMinutesFromPrev = GeneratedColumn<int>(
    'walk_minutes_from_prev',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _plannedArrivalAtMeta = const VerificationMeta(
    'plannedArrivalAt',
  );
  @override
  late final GeneratedColumn<int> plannedArrivalAt = GeneratedColumn<int>(
    'planned_arrival_at',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _plannedDepartureAtMeta =
      const VerificationMeta('plannedDepartureAt');
  @override
  late final GeneratedColumn<int> plannedDepartureAt = GeneratedColumn<int>(
    'planned_departure_at',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    routeId,
    stopOrder,
    venueId,
    stayMinutes,
    walkMinutesFromPrev,
    plannedArrivalAt,
    plannedDepartureAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'route_stops';
  @override
  VerificationContext validateIntegrity(
    Insertable<RouteStop> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('route_id')) {
      context.handle(
        _routeIdMeta,
        routeId.isAcceptableOrUnknown(data['route_id']!, _routeIdMeta),
      );
    } else if (isInserting) {
      context.missing(_routeIdMeta);
    }
    if (data.containsKey('stop_order')) {
      context.handle(
        _stopOrderMeta,
        stopOrder.isAcceptableOrUnknown(data['stop_order']!, _stopOrderMeta),
      );
    } else if (isInserting) {
      context.missing(_stopOrderMeta);
    }
    if (data.containsKey('venue_id')) {
      context.handle(
        _venueIdMeta,
        venueId.isAcceptableOrUnknown(data['venue_id']!, _venueIdMeta),
      );
    } else if (isInserting) {
      context.missing(_venueIdMeta);
    }
    if (data.containsKey('stay_minutes')) {
      context.handle(
        _stayMinutesMeta,
        stayMinutes.isAcceptableOrUnknown(
          data['stay_minutes']!,
          _stayMinutesMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_stayMinutesMeta);
    }
    if (data.containsKey('walk_minutes_from_prev')) {
      context.handle(
        _walkMinutesFromPrevMeta,
        walkMinutesFromPrev.isAcceptableOrUnknown(
          data['walk_minutes_from_prev']!,
          _walkMinutesFromPrevMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_walkMinutesFromPrevMeta);
    }
    if (data.containsKey('planned_arrival_at')) {
      context.handle(
        _plannedArrivalAtMeta,
        plannedArrivalAt.isAcceptableOrUnknown(
          data['planned_arrival_at']!,
          _plannedArrivalAtMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_plannedArrivalAtMeta);
    }
    if (data.containsKey('planned_departure_at')) {
      context.handle(
        _plannedDepartureAtMeta,
        plannedDepartureAt.isAcceptableOrUnknown(
          data['planned_departure_at']!,
          _plannedDepartureAtMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_plannedDepartureAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RouteStop map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RouteStop(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      routeId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}route_id'],
      )!,
      stopOrder: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}stop_order'],
      )!,
      venueId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}venue_id'],
      )!,
      stayMinutes: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}stay_minutes'],
      )!,
      walkMinutesFromPrev: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}walk_minutes_from_prev'],
      )!,
      plannedArrivalAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}planned_arrival_at'],
      )!,
      plannedDepartureAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}planned_departure_at'],
      )!,
    );
  }

  @override
  $RouteStopsTable createAlias(String alias) {
    return $RouteStopsTable(attachedDatabase, alias);
  }
}

class RouteStop extends DataClass implements Insertable<RouteStop> {
  final String id;
  final String routeId;
  final int stopOrder;
  final String venueId;
  final int stayMinutes;
  final int walkMinutesFromPrev;
  final int plannedArrivalAt;
  final int plannedDepartureAt;
  const RouteStop({
    required this.id,
    required this.routeId,
    required this.stopOrder,
    required this.venueId,
    required this.stayMinutes,
    required this.walkMinutesFromPrev,
    required this.plannedArrivalAt,
    required this.plannedDepartureAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['route_id'] = Variable<String>(routeId);
    map['stop_order'] = Variable<int>(stopOrder);
    map['venue_id'] = Variable<String>(venueId);
    map['stay_minutes'] = Variable<int>(stayMinutes);
    map['walk_minutes_from_prev'] = Variable<int>(walkMinutesFromPrev);
    map['planned_arrival_at'] = Variable<int>(plannedArrivalAt);
    map['planned_departure_at'] = Variable<int>(plannedDepartureAt);
    return map;
  }

  RouteStopsCompanion toCompanion(bool nullToAbsent) {
    return RouteStopsCompanion(
      id: Value(id),
      routeId: Value(routeId),
      stopOrder: Value(stopOrder),
      venueId: Value(venueId),
      stayMinutes: Value(stayMinutes),
      walkMinutesFromPrev: Value(walkMinutesFromPrev),
      plannedArrivalAt: Value(plannedArrivalAt),
      plannedDepartureAt: Value(plannedDepartureAt),
    );
  }

  factory RouteStop.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RouteStop(
      id: serializer.fromJson<String>(json['id']),
      routeId: serializer.fromJson<String>(json['routeId']),
      stopOrder: serializer.fromJson<int>(json['stopOrder']),
      venueId: serializer.fromJson<String>(json['venueId']),
      stayMinutes: serializer.fromJson<int>(json['stayMinutes']),
      walkMinutesFromPrev: serializer.fromJson<int>(
        json['walkMinutesFromPrev'],
      ),
      plannedArrivalAt: serializer.fromJson<int>(json['plannedArrivalAt']),
      plannedDepartureAt: serializer.fromJson<int>(json['plannedDepartureAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'routeId': serializer.toJson<String>(routeId),
      'stopOrder': serializer.toJson<int>(stopOrder),
      'venueId': serializer.toJson<String>(venueId),
      'stayMinutes': serializer.toJson<int>(stayMinutes),
      'walkMinutesFromPrev': serializer.toJson<int>(walkMinutesFromPrev),
      'plannedArrivalAt': serializer.toJson<int>(plannedArrivalAt),
      'plannedDepartureAt': serializer.toJson<int>(plannedDepartureAt),
    };
  }

  RouteStop copyWith({
    String? id,
    String? routeId,
    int? stopOrder,
    String? venueId,
    int? stayMinutes,
    int? walkMinutesFromPrev,
    int? plannedArrivalAt,
    int? plannedDepartureAt,
  }) => RouteStop(
    id: id ?? this.id,
    routeId: routeId ?? this.routeId,
    stopOrder: stopOrder ?? this.stopOrder,
    venueId: venueId ?? this.venueId,
    stayMinutes: stayMinutes ?? this.stayMinutes,
    walkMinutesFromPrev: walkMinutesFromPrev ?? this.walkMinutesFromPrev,
    plannedArrivalAt: plannedArrivalAt ?? this.plannedArrivalAt,
    plannedDepartureAt: plannedDepartureAt ?? this.plannedDepartureAt,
  );
  RouteStop copyWithCompanion(RouteStopsCompanion data) {
    return RouteStop(
      id: data.id.present ? data.id.value : this.id,
      routeId: data.routeId.present ? data.routeId.value : this.routeId,
      stopOrder: data.stopOrder.present ? data.stopOrder.value : this.stopOrder,
      venueId: data.venueId.present ? data.venueId.value : this.venueId,
      stayMinutes: data.stayMinutes.present
          ? data.stayMinutes.value
          : this.stayMinutes,
      walkMinutesFromPrev: data.walkMinutesFromPrev.present
          ? data.walkMinutesFromPrev.value
          : this.walkMinutesFromPrev,
      plannedArrivalAt: data.plannedArrivalAt.present
          ? data.plannedArrivalAt.value
          : this.plannedArrivalAt,
      plannedDepartureAt: data.plannedDepartureAt.present
          ? data.plannedDepartureAt.value
          : this.plannedDepartureAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RouteStop(')
          ..write('id: $id, ')
          ..write('routeId: $routeId, ')
          ..write('stopOrder: $stopOrder, ')
          ..write('venueId: $venueId, ')
          ..write('stayMinutes: $stayMinutes, ')
          ..write('walkMinutesFromPrev: $walkMinutesFromPrev, ')
          ..write('plannedArrivalAt: $plannedArrivalAt, ')
          ..write('plannedDepartureAt: $plannedDepartureAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    routeId,
    stopOrder,
    venueId,
    stayMinutes,
    walkMinutesFromPrev,
    plannedArrivalAt,
    plannedDepartureAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RouteStop &&
          other.id == this.id &&
          other.routeId == this.routeId &&
          other.stopOrder == this.stopOrder &&
          other.venueId == this.venueId &&
          other.stayMinutes == this.stayMinutes &&
          other.walkMinutesFromPrev == this.walkMinutesFromPrev &&
          other.plannedArrivalAt == this.plannedArrivalAt &&
          other.plannedDepartureAt == this.plannedDepartureAt);
}

class RouteStopsCompanion extends UpdateCompanion<RouteStop> {
  final Value<String> id;
  final Value<String> routeId;
  final Value<int> stopOrder;
  final Value<String> venueId;
  final Value<int> stayMinutes;
  final Value<int> walkMinutesFromPrev;
  final Value<int> plannedArrivalAt;
  final Value<int> plannedDepartureAt;
  final Value<int> rowid;
  const RouteStopsCompanion({
    this.id = const Value.absent(),
    this.routeId = const Value.absent(),
    this.stopOrder = const Value.absent(),
    this.venueId = const Value.absent(),
    this.stayMinutes = const Value.absent(),
    this.walkMinutesFromPrev = const Value.absent(),
    this.plannedArrivalAt = const Value.absent(),
    this.plannedDepartureAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  RouteStopsCompanion.insert({
    required String id,
    required String routeId,
    required int stopOrder,
    required String venueId,
    required int stayMinutes,
    required int walkMinutesFromPrev,
    required int plannedArrivalAt,
    required int plannedDepartureAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       routeId = Value(routeId),
       stopOrder = Value(stopOrder),
       venueId = Value(venueId),
       stayMinutes = Value(stayMinutes),
       walkMinutesFromPrev = Value(walkMinutesFromPrev),
       plannedArrivalAt = Value(plannedArrivalAt),
       plannedDepartureAt = Value(plannedDepartureAt);
  static Insertable<RouteStop> custom({
    Expression<String>? id,
    Expression<String>? routeId,
    Expression<int>? stopOrder,
    Expression<String>? venueId,
    Expression<int>? stayMinutes,
    Expression<int>? walkMinutesFromPrev,
    Expression<int>? plannedArrivalAt,
    Expression<int>? plannedDepartureAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (routeId != null) 'route_id': routeId,
      if (stopOrder != null) 'stop_order': stopOrder,
      if (venueId != null) 'venue_id': venueId,
      if (stayMinutes != null) 'stay_minutes': stayMinutes,
      if (walkMinutesFromPrev != null)
        'walk_minutes_from_prev': walkMinutesFromPrev,
      if (plannedArrivalAt != null) 'planned_arrival_at': plannedArrivalAt,
      if (plannedDepartureAt != null)
        'planned_departure_at': plannedDepartureAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RouteStopsCompanion copyWith({
    Value<String>? id,
    Value<String>? routeId,
    Value<int>? stopOrder,
    Value<String>? venueId,
    Value<int>? stayMinutes,
    Value<int>? walkMinutesFromPrev,
    Value<int>? plannedArrivalAt,
    Value<int>? plannedDepartureAt,
    Value<int>? rowid,
  }) {
    return RouteStopsCompanion(
      id: id ?? this.id,
      routeId: routeId ?? this.routeId,
      stopOrder: stopOrder ?? this.stopOrder,
      venueId: venueId ?? this.venueId,
      stayMinutes: stayMinutes ?? this.stayMinutes,
      walkMinutesFromPrev: walkMinutesFromPrev ?? this.walkMinutesFromPrev,
      plannedArrivalAt: plannedArrivalAt ?? this.plannedArrivalAt,
      plannedDepartureAt: plannedDepartureAt ?? this.plannedDepartureAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (routeId.present) {
      map['route_id'] = Variable<String>(routeId.value);
    }
    if (stopOrder.present) {
      map['stop_order'] = Variable<int>(stopOrder.value);
    }
    if (venueId.present) {
      map['venue_id'] = Variable<String>(venueId.value);
    }
    if (stayMinutes.present) {
      map['stay_minutes'] = Variable<int>(stayMinutes.value);
    }
    if (walkMinutesFromPrev.present) {
      map['walk_minutes_from_prev'] = Variable<int>(walkMinutesFromPrev.value);
    }
    if (plannedArrivalAt.present) {
      map['planned_arrival_at'] = Variable<int>(plannedArrivalAt.value);
    }
    if (plannedDepartureAt.present) {
      map['planned_departure_at'] = Variable<int>(plannedDepartureAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RouteStopsCompanion(')
          ..write('id: $id, ')
          ..write('routeId: $routeId, ')
          ..write('stopOrder: $stopOrder, ')
          ..write('venueId: $venueId, ')
          ..write('stayMinutes: $stayMinutes, ')
          ..write('walkMinutesFromPrev: $walkMinutesFromPrev, ')
          ..write('plannedArrivalAt: $plannedArrivalAt, ')
          ..write('plannedDepartureAt: $plannedDepartureAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FavoritesTable extends Favorites
    with TableInfo<$FavoritesTable, Favorite> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FavoritesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _venueIdMeta = const VerificationMeta(
    'venueId',
  );
  @override
  late final GeneratedColumn<String> venueId = GeneratedColumn<String>(
    'venue_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES venues (id)',
    ),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<int> createdAt = GeneratedColumn<int>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [venueId, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'favorites';
  @override
  VerificationContext validateIntegrity(
    Insertable<Favorite> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('venue_id')) {
      context.handle(
        _venueIdMeta,
        venueId.isAcceptableOrUnknown(data['venue_id']!, _venueIdMeta),
      );
    } else if (isInserting) {
      context.missing(_venueIdMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {venueId};
  @override
  Favorite map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Favorite(
      venueId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}venue_id'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $FavoritesTable createAlias(String alias) {
    return $FavoritesTable(attachedDatabase, alias);
  }
}

class Favorite extends DataClass implements Insertable<Favorite> {
  final String venueId;
  final int createdAt;
  const Favorite({required this.venueId, required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['venue_id'] = Variable<String>(venueId);
    map['created_at'] = Variable<int>(createdAt);
    return map;
  }

  FavoritesCompanion toCompanion(bool nullToAbsent) {
    return FavoritesCompanion(
      venueId: Value(venueId),
      createdAt: Value(createdAt),
    );
  }

  factory Favorite.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Favorite(
      venueId: serializer.fromJson<String>(json['venueId']),
      createdAt: serializer.fromJson<int>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'venueId': serializer.toJson<String>(venueId),
      'createdAt': serializer.toJson<int>(createdAt),
    };
  }

  Favorite copyWith({String? venueId, int? createdAt}) => Favorite(
    venueId: venueId ?? this.venueId,
    createdAt: createdAt ?? this.createdAt,
  );
  Favorite copyWithCompanion(FavoritesCompanion data) {
    return Favorite(
      venueId: data.venueId.present ? data.venueId.value : this.venueId,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Favorite(')
          ..write('venueId: $venueId, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(venueId, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Favorite &&
          other.venueId == this.venueId &&
          other.createdAt == this.createdAt);
}

class FavoritesCompanion extends UpdateCompanion<Favorite> {
  final Value<String> venueId;
  final Value<int> createdAt;
  final Value<int> rowid;
  const FavoritesCompanion({
    this.venueId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FavoritesCompanion.insert({
    required String venueId,
    required int createdAt,
    this.rowid = const Value.absent(),
  }) : venueId = Value(venueId),
       createdAt = Value(createdAt);
  static Insertable<Favorite> custom({
    Expression<String>? venueId,
    Expression<int>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (venueId != null) 'venue_id': venueId,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FavoritesCompanion copyWith({
    Value<String>? venueId,
    Value<int>? createdAt,
    Value<int>? rowid,
  }) {
    return FavoritesCompanion(
      venueId: venueId ?? this.venueId,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (venueId.present) {
      map['venue_id'] = Variable<String>(venueId.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<int>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FavoritesCompanion(')
          ..write('venueId: $venueId, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $EventQueueTable extends EventQueue
    with TableInfo<$EventQueueTable, EventQueueData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EventQueueTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<int> createdAt = GeneratedColumn<int>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _eventTypeMeta = const VerificationMeta(
    'eventType',
  );
  @override
  late final GeneratedColumn<String> eventType = GeneratedColumn<String>(
    'event_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _venueIdMeta = const VerificationMeta(
    'venueId',
  );
  @override
  late final GeneratedColumn<String> venueId = GeneratedColumn<String>(
    'venue_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES venues (id)',
    ),
  );
  static const VerificationMeta _routeIdMeta = const VerificationMeta(
    'routeId',
  );
  @override
  late final GeneratedColumn<String> routeId = GeneratedColumn<String>(
    'route_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES routes (id)',
    ),
  );
  static const VerificationMeta _payloadJsonMeta = const VerificationMeta(
    'payloadJson',
  );
  @override
  late final GeneratedColumn<String> payloadJson = GeneratedColumn<String>(
    'payload_json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _syncedMeta = const VerificationMeta('synced');
  @override
  late final GeneratedColumn<int> synced = GeneratedColumn<int>(
    'synced',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    createdAt,
    eventType,
    venueId,
    routeId,
    payloadJson,
    synced,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'event_queue';
  @override
  VerificationContext validateIntegrity(
    Insertable<EventQueueData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('event_type')) {
      context.handle(
        _eventTypeMeta,
        eventType.isAcceptableOrUnknown(data['event_type']!, _eventTypeMeta),
      );
    } else if (isInserting) {
      context.missing(_eventTypeMeta);
    }
    if (data.containsKey('venue_id')) {
      context.handle(
        _venueIdMeta,
        venueId.isAcceptableOrUnknown(data['venue_id']!, _venueIdMeta),
      );
    }
    if (data.containsKey('route_id')) {
      context.handle(
        _routeIdMeta,
        routeId.isAcceptableOrUnknown(data['route_id']!, _routeIdMeta),
      );
    }
    if (data.containsKey('payload_json')) {
      context.handle(
        _payloadJsonMeta,
        payloadJson.isAcceptableOrUnknown(
          data['payload_json']!,
          _payloadJsonMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_payloadJsonMeta);
    }
    if (data.containsKey('synced')) {
      context.handle(
        _syncedMeta,
        synced.isAcceptableOrUnknown(data['synced']!, _syncedMeta),
      );
    } else if (isInserting) {
      context.missing(_syncedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  EventQueueData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return EventQueueData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}created_at'],
      )!,
      eventType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}event_type'],
      )!,
      venueId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}venue_id'],
      ),
      routeId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}route_id'],
      ),
      payloadJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}payload_json'],
      )!,
      synced: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}synced'],
      )!,
    );
  }

  @override
  $EventQueueTable createAlias(String alias) {
    return $EventQueueTable(attachedDatabase, alias);
  }
}

class EventQueueData extends DataClass implements Insertable<EventQueueData> {
  final String id;
  final int createdAt;
  final String eventType;
  final String? venueId;
  final String? routeId;
  final String payloadJson;
  final int synced;
  const EventQueueData({
    required this.id,
    required this.createdAt,
    required this.eventType,
    this.venueId,
    this.routeId,
    required this.payloadJson,
    required this.synced,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['created_at'] = Variable<int>(createdAt);
    map['event_type'] = Variable<String>(eventType);
    if (!nullToAbsent || venueId != null) {
      map['venue_id'] = Variable<String>(venueId);
    }
    if (!nullToAbsent || routeId != null) {
      map['route_id'] = Variable<String>(routeId);
    }
    map['payload_json'] = Variable<String>(payloadJson);
    map['synced'] = Variable<int>(synced);
    return map;
  }

  EventQueueCompanion toCompanion(bool nullToAbsent) {
    return EventQueueCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      eventType: Value(eventType),
      venueId: venueId == null && nullToAbsent
          ? const Value.absent()
          : Value(venueId),
      routeId: routeId == null && nullToAbsent
          ? const Value.absent()
          : Value(routeId),
      payloadJson: Value(payloadJson),
      synced: Value(synced),
    );
  }

  factory EventQueueData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return EventQueueData(
      id: serializer.fromJson<String>(json['id']),
      createdAt: serializer.fromJson<int>(json['createdAt']),
      eventType: serializer.fromJson<String>(json['eventType']),
      venueId: serializer.fromJson<String?>(json['venueId']),
      routeId: serializer.fromJson<String?>(json['routeId']),
      payloadJson: serializer.fromJson<String>(json['payloadJson']),
      synced: serializer.fromJson<int>(json['synced']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'createdAt': serializer.toJson<int>(createdAt),
      'eventType': serializer.toJson<String>(eventType),
      'venueId': serializer.toJson<String?>(venueId),
      'routeId': serializer.toJson<String?>(routeId),
      'payloadJson': serializer.toJson<String>(payloadJson),
      'synced': serializer.toJson<int>(synced),
    };
  }

  EventQueueData copyWith({
    String? id,
    int? createdAt,
    String? eventType,
    Value<String?> venueId = const Value.absent(),
    Value<String?> routeId = const Value.absent(),
    String? payloadJson,
    int? synced,
  }) => EventQueueData(
    id: id ?? this.id,
    createdAt: createdAt ?? this.createdAt,
    eventType: eventType ?? this.eventType,
    venueId: venueId.present ? venueId.value : this.venueId,
    routeId: routeId.present ? routeId.value : this.routeId,
    payloadJson: payloadJson ?? this.payloadJson,
    synced: synced ?? this.synced,
  );
  EventQueueData copyWithCompanion(EventQueueCompanion data) {
    return EventQueueData(
      id: data.id.present ? data.id.value : this.id,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      eventType: data.eventType.present ? data.eventType.value : this.eventType,
      venueId: data.venueId.present ? data.venueId.value : this.venueId,
      routeId: data.routeId.present ? data.routeId.value : this.routeId,
      payloadJson: data.payloadJson.present
          ? data.payloadJson.value
          : this.payloadJson,
      synced: data.synced.present ? data.synced.value : this.synced,
    );
  }

  @override
  String toString() {
    return (StringBuffer('EventQueueData(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('eventType: $eventType, ')
          ..write('venueId: $venueId, ')
          ..write('routeId: $routeId, ')
          ..write('payloadJson: $payloadJson, ')
          ..write('synced: $synced')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    createdAt,
    eventType,
    venueId,
    routeId,
    payloadJson,
    synced,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EventQueueData &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.eventType == this.eventType &&
          other.venueId == this.venueId &&
          other.routeId == this.routeId &&
          other.payloadJson == this.payloadJson &&
          other.synced == this.synced);
}

class EventQueueCompanion extends UpdateCompanion<EventQueueData> {
  final Value<String> id;
  final Value<int> createdAt;
  final Value<String> eventType;
  final Value<String?> venueId;
  final Value<String?> routeId;
  final Value<String> payloadJson;
  final Value<int> synced;
  final Value<int> rowid;
  const EventQueueCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.eventType = const Value.absent(),
    this.venueId = const Value.absent(),
    this.routeId = const Value.absent(),
    this.payloadJson = const Value.absent(),
    this.synced = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  EventQueueCompanion.insert({
    required String id,
    required int createdAt,
    required String eventType,
    this.venueId = const Value.absent(),
    this.routeId = const Value.absent(),
    required String payloadJson,
    required int synced,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       createdAt = Value(createdAt),
       eventType = Value(eventType),
       payloadJson = Value(payloadJson),
       synced = Value(synced);
  static Insertable<EventQueueData> custom({
    Expression<String>? id,
    Expression<int>? createdAt,
    Expression<String>? eventType,
    Expression<String>? venueId,
    Expression<String>? routeId,
    Expression<String>? payloadJson,
    Expression<int>? synced,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (eventType != null) 'event_type': eventType,
      if (venueId != null) 'venue_id': venueId,
      if (routeId != null) 'route_id': routeId,
      if (payloadJson != null) 'payload_json': payloadJson,
      if (synced != null) 'synced': synced,
      if (rowid != null) 'rowid': rowid,
    });
  }

  EventQueueCompanion copyWith({
    Value<String>? id,
    Value<int>? createdAt,
    Value<String>? eventType,
    Value<String?>? venueId,
    Value<String?>? routeId,
    Value<String>? payloadJson,
    Value<int>? synced,
    Value<int>? rowid,
  }) {
    return EventQueueCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      eventType: eventType ?? this.eventType,
      venueId: venueId ?? this.venueId,
      routeId: routeId ?? this.routeId,
      payloadJson: payloadJson ?? this.payloadJson,
      synced: synced ?? this.synced,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<int>(createdAt.value);
    }
    if (eventType.present) {
      map['event_type'] = Variable<String>(eventType.value);
    }
    if (venueId.present) {
      map['venue_id'] = Variable<String>(venueId.value);
    }
    if (routeId.present) {
      map['route_id'] = Variable<String>(routeId.value);
    }
    if (payloadJson.present) {
      map['payload_json'] = Variable<String>(payloadJson.value);
    }
    if (synced.present) {
      map['synced'] = Variable<int>(synced.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EventQueueCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('eventType: $eventType, ')
          ..write('venueId: $venueId, ')
          ..write('routeId: $routeId, ')
          ..write('payloadJson: $payloadJson, ')
          ..write('synced: $synced, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $UserPreferencesTable extends UserPreferences
    with TableInfo<$UserPreferencesTable, UserPreference> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserPreferencesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
    'key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
    'value',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<int> updatedAt = GeneratedColumn<int>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [key, value, updatedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_preferences';
  @override
  VerificationContext validateIntegrity(
    Insertable<UserPreference> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('key')) {
      context.handle(
        _keyMeta,
        key.isAcceptableOrUnknown(data['key']!, _keyMeta),
      );
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
        _valueMeta,
        value.isAcceptableOrUnknown(data['value']!, _valueMeta),
      );
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  UserPreference map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserPreference(
      key: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}key'],
      )!,
      value: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}value'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $UserPreferencesTable createAlias(String alias) {
    return $UserPreferencesTable(attachedDatabase, alias);
  }
}

class UserPreference extends DataClass implements Insertable<UserPreference> {
  final String key;
  final String value;
  final int updatedAt;
  const UserPreference({
    required this.key,
    required this.value,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['key'] = Variable<String>(key);
    map['value'] = Variable<String>(value);
    map['updated_at'] = Variable<int>(updatedAt);
    return map;
  }

  UserPreferencesCompanion toCompanion(bool nullToAbsent) {
    return UserPreferencesCompanion(
      key: Value(key),
      value: Value(value),
      updatedAt: Value(updatedAt),
    );
  }

  factory UserPreference.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserPreference(
      key: serializer.fromJson<String>(json['key']),
      value: serializer.fromJson<String>(json['value']),
      updatedAt: serializer.fromJson<int>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'key': serializer.toJson<String>(key),
      'value': serializer.toJson<String>(value),
      'updatedAt': serializer.toJson<int>(updatedAt),
    };
  }

  UserPreference copyWith({String? key, String? value, int? updatedAt}) =>
      UserPreference(
        key: key ?? this.key,
        value: value ?? this.value,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  UserPreference copyWithCompanion(UserPreferencesCompanion data) {
    return UserPreference(
      key: data.key.present ? data.key.value : this.key,
      value: data.value.present ? data.value.value : this.value,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserPreference(')
          ..write('key: $key, ')
          ..write('value: $value, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(key, value, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserPreference &&
          other.key == this.key &&
          other.value == this.value &&
          other.updatedAt == this.updatedAt);
}

class UserPreferencesCompanion extends UpdateCompanion<UserPreference> {
  final Value<String> key;
  final Value<String> value;
  final Value<int> updatedAt;
  final Value<int> rowid;
  const UserPreferencesCompanion({
    this.key = const Value.absent(),
    this.value = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UserPreferencesCompanion.insert({
    required String key,
    required String value,
    required int updatedAt,
    this.rowid = const Value.absent(),
  }) : key = Value(key),
       value = Value(value),
       updatedAt = Value(updatedAt);
  static Insertable<UserPreference> custom({
    Expression<String>? key,
    Expression<String>? value,
    Expression<int>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (key != null) 'key': key,
      if (value != null) 'value': value,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UserPreferencesCompanion copyWith({
    Value<String>? key,
    Value<String>? value,
    Value<int>? updatedAt,
    Value<int>? rowid,
  }) {
    return UserPreferencesCompanion(
      key: key ?? this.key,
      value: value ?? this.value,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<int>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserPreferencesCompanion(')
          ..write('key: $key, ')
          ..write('value: $value, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $AreasTable areas = $AreasTable(this);
  late final $CategoriesTable categories = $CategoriesTable(this);
  late final $VenuesTable venues = $VenuesTable(this);
  late final $VenueCategoriesTable venueCategories = $VenueCategoriesTable(
    this,
  );
  late final $OpeningHoursTable openingHours = $OpeningHoursTable(this);
  late final $HappyHoursTable happyHours = $HappyHoursTable(this);
  late final $OffersTable offers = $OffersTable(this);
  late final $NightlifePricingTable nightlifePricing = $NightlifePricingTable(
    this,
  );
  late final $RoutesTable routes = $RoutesTable(this);
  late final $RouteStopsTable routeStops = $RouteStopsTable(this);
  late final $FavoritesTable favorites = $FavoritesTable(this);
  late final $EventQueueTable eventQueue = $EventQueueTable(this);
  late final $UserPreferencesTable userPreferences = $UserPreferencesTable(
    this,
  );
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    areas,
    categories,
    venues,
    venueCategories,
    openingHours,
    happyHours,
    offers,
    nightlifePricing,
    routes,
    routeStops,
    favorites,
    eventQueue,
    userPreferences,
  ];
}

typedef $$AreasTableCreateCompanionBuilder =
    AreasCompanion Function({
      required String id,
      required String nameJa,
      required String nameEn,
      required double centerLat,
      required double centerLng,
      required double defaultZoom,
      required int isActive,
      required int createdAt,
      required int updatedAt,
      Value<int> rowid,
    });
typedef $$AreasTableUpdateCompanionBuilder =
    AreasCompanion Function({
      Value<String> id,
      Value<String> nameJa,
      Value<String> nameEn,
      Value<double> centerLat,
      Value<double> centerLng,
      Value<double> defaultZoom,
      Value<int> isActive,
      Value<int> createdAt,
      Value<int> updatedAt,
      Value<int> rowid,
    });

final class $$AreasTableReferences
    extends BaseReferences<_$AppDatabase, $AreasTable, Area> {
  $$AreasTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$VenuesTable, List<Venue>> _venuesRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.venues,
    aliasName: $_aliasNameGenerator(db.areas.id, db.venues.areaId),
  );

  $$VenuesTableProcessedTableManager get venuesRefs {
    final manager = $$VenuesTableTableManager(
      $_db,
      $_db.venues,
    ).filter((f) => f.areaId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_venuesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$RoutesTable, List<Route>> _routesRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.routes,
    aliasName: $_aliasNameGenerator(db.areas.id, db.routes.areaId),
  );

  $$RoutesTableProcessedTableManager get routesRefs {
    final manager = $$RoutesTableTableManager(
      $_db,
      $_db.routes,
    ).filter((f) => f.areaId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_routesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$AreasTableFilterComposer extends Composer<_$AppDatabase, $AreasTable> {
  $$AreasTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nameJa => $composableBuilder(
    column: $table.nameJa,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nameEn => $composableBuilder(
    column: $table.nameEn,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get centerLat => $composableBuilder(
    column: $table.centerLat,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get centerLng => $composableBuilder(
    column: $table.centerLng,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get defaultZoom => $composableBuilder(
    column: $table.defaultZoom,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> venuesRefs(
    Expression<bool> Function($$VenuesTableFilterComposer f) f,
  ) {
    final $$VenuesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.venues,
      getReferencedColumn: (t) => t.areaId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VenuesTableFilterComposer(
            $db: $db,
            $table: $db.venues,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> routesRefs(
    Expression<bool> Function($$RoutesTableFilterComposer f) f,
  ) {
    final $$RoutesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.routes,
      getReferencedColumn: (t) => t.areaId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RoutesTableFilterComposer(
            $db: $db,
            $table: $db.routes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$AreasTableOrderingComposer
    extends Composer<_$AppDatabase, $AreasTable> {
  $$AreasTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nameJa => $composableBuilder(
    column: $table.nameJa,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nameEn => $composableBuilder(
    column: $table.nameEn,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get centerLat => $composableBuilder(
    column: $table.centerLat,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get centerLng => $composableBuilder(
    column: $table.centerLng,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get defaultZoom => $composableBuilder(
    column: $table.defaultZoom,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$AreasTableAnnotationComposer
    extends Composer<_$AppDatabase, $AreasTable> {
  $$AreasTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get nameJa =>
      $composableBuilder(column: $table.nameJa, builder: (column) => column);

  GeneratedColumn<String> get nameEn =>
      $composableBuilder(column: $table.nameEn, builder: (column) => column);

  GeneratedColumn<double> get centerLat =>
      $composableBuilder(column: $table.centerLat, builder: (column) => column);

  GeneratedColumn<double> get centerLng =>
      $composableBuilder(column: $table.centerLng, builder: (column) => column);

  GeneratedColumn<double> get defaultZoom => $composableBuilder(
    column: $table.defaultZoom,
    builder: (column) => column,
  );

  GeneratedColumn<int> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<int> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<int> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  Expression<T> venuesRefs<T extends Object>(
    Expression<T> Function($$VenuesTableAnnotationComposer a) f,
  ) {
    final $$VenuesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.venues,
      getReferencedColumn: (t) => t.areaId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VenuesTableAnnotationComposer(
            $db: $db,
            $table: $db.venues,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> routesRefs<T extends Object>(
    Expression<T> Function($$RoutesTableAnnotationComposer a) f,
  ) {
    final $$RoutesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.routes,
      getReferencedColumn: (t) => t.areaId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RoutesTableAnnotationComposer(
            $db: $db,
            $table: $db.routes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$AreasTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $AreasTable,
          Area,
          $$AreasTableFilterComposer,
          $$AreasTableOrderingComposer,
          $$AreasTableAnnotationComposer,
          $$AreasTableCreateCompanionBuilder,
          $$AreasTableUpdateCompanionBuilder,
          (Area, $$AreasTableReferences),
          Area,
          PrefetchHooks Function({bool venuesRefs, bool routesRefs})
        > {
  $$AreasTableTableManager(_$AppDatabase db, $AreasTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AreasTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AreasTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AreasTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> nameJa = const Value.absent(),
                Value<String> nameEn = const Value.absent(),
                Value<double> centerLat = const Value.absent(),
                Value<double> centerLng = const Value.absent(),
                Value<double> defaultZoom = const Value.absent(),
                Value<int> isActive = const Value.absent(),
                Value<int> createdAt = const Value.absent(),
                Value<int> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => AreasCompanion(
                id: id,
                nameJa: nameJa,
                nameEn: nameEn,
                centerLat: centerLat,
                centerLng: centerLng,
                defaultZoom: defaultZoom,
                isActive: isActive,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String nameJa,
                required String nameEn,
                required double centerLat,
                required double centerLng,
                required double defaultZoom,
                required int isActive,
                required int createdAt,
                required int updatedAt,
                Value<int> rowid = const Value.absent(),
              }) => AreasCompanion.insert(
                id: id,
                nameJa: nameJa,
                nameEn: nameEn,
                centerLat: centerLat,
                centerLng: centerLng,
                defaultZoom: defaultZoom,
                isActive: isActive,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) =>
                    (e.readTable(table), $$AreasTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback: ({venuesRefs = false, routesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (venuesRefs) db.venues,
                if (routesRefs) db.routes,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (venuesRefs)
                    await $_getPrefetchedData<Area, $AreasTable, Venue>(
                      currentTable: table,
                      referencedTable: $$AreasTableReferences._venuesRefsTable(
                        db,
                      ),
                      managerFromTypedResult: (p0) =>
                          $$AreasTableReferences(db, table, p0).venuesRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.areaId == item.id),
                      typedResults: items,
                    ),
                  if (routesRefs)
                    await $_getPrefetchedData<Area, $AreasTable, Route>(
                      currentTable: table,
                      referencedTable: $$AreasTableReferences._routesRefsTable(
                        db,
                      ),
                      managerFromTypedResult: (p0) =>
                          $$AreasTableReferences(db, table, p0).routesRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.areaId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$AreasTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $AreasTable,
      Area,
      $$AreasTableFilterComposer,
      $$AreasTableOrderingComposer,
      $$AreasTableAnnotationComposer,
      $$AreasTableCreateCompanionBuilder,
      $$AreasTableUpdateCompanionBuilder,
      (Area, $$AreasTableReferences),
      Area,
      PrefetchHooks Function({bool venuesRefs, bool routesRefs})
    >;
typedef $$CategoriesTableCreateCompanionBuilder =
    CategoriesCompanion Function({
      required String id,
      required String labelJa,
      required String labelEn,
      required int isNightlife,
      required int sortOrder,
      required int isActive,
      Value<int> rowid,
    });
typedef $$CategoriesTableUpdateCompanionBuilder =
    CategoriesCompanion Function({
      Value<String> id,
      Value<String> labelJa,
      Value<String> labelEn,
      Value<int> isNightlife,
      Value<int> sortOrder,
      Value<int> isActive,
      Value<int> rowid,
    });

final class $$CategoriesTableReferences
    extends BaseReferences<_$AppDatabase, $CategoriesTable, Category> {
  $$CategoriesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$VenueCategoriesTable, List<VenueCategory>>
  _venueCategoriesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.venueCategories,
    aliasName: $_aliasNameGenerator(
      db.categories.id,
      db.venueCategories.categoryId,
    ),
  );

  $$VenueCategoriesTableProcessedTableManager get venueCategoriesRefs {
    final manager = $$VenueCategoriesTableTableManager(
      $_db,
      $_db.venueCategories,
    ).filter((f) => f.categoryId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _venueCategoriesRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$CategoriesTableFilterComposer
    extends Composer<_$AppDatabase, $CategoriesTable> {
  $$CategoriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get labelJa => $composableBuilder(
    column: $table.labelJa,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get labelEn => $composableBuilder(
    column: $table.labelEn,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get isNightlife => $composableBuilder(
    column: $table.isNightlife,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> venueCategoriesRefs(
    Expression<bool> Function($$VenueCategoriesTableFilterComposer f) f,
  ) {
    final $$VenueCategoriesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.venueCategories,
      getReferencedColumn: (t) => t.categoryId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VenueCategoriesTableFilterComposer(
            $db: $db,
            $table: $db.venueCategories,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$CategoriesTableOrderingComposer
    extends Composer<_$AppDatabase, $CategoriesTable> {
  $$CategoriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get labelJa => $composableBuilder(
    column: $table.labelJa,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get labelEn => $composableBuilder(
    column: $table.labelEn,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get isNightlife => $composableBuilder(
    column: $table.isNightlife,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CategoriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $CategoriesTable> {
  $$CategoriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get labelJa =>
      $composableBuilder(column: $table.labelJa, builder: (column) => column);

  GeneratedColumn<String> get labelEn =>
      $composableBuilder(column: $table.labelEn, builder: (column) => column);

  GeneratedColumn<int> get isNightlife => $composableBuilder(
    column: $table.isNightlife,
    builder: (column) => column,
  );

  GeneratedColumn<int> get sortOrder =>
      $composableBuilder(column: $table.sortOrder, builder: (column) => column);

  GeneratedColumn<int> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  Expression<T> venueCategoriesRefs<T extends Object>(
    Expression<T> Function($$VenueCategoriesTableAnnotationComposer a) f,
  ) {
    final $$VenueCategoriesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.venueCategories,
      getReferencedColumn: (t) => t.categoryId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VenueCategoriesTableAnnotationComposer(
            $db: $db,
            $table: $db.venueCategories,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$CategoriesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CategoriesTable,
          Category,
          $$CategoriesTableFilterComposer,
          $$CategoriesTableOrderingComposer,
          $$CategoriesTableAnnotationComposer,
          $$CategoriesTableCreateCompanionBuilder,
          $$CategoriesTableUpdateCompanionBuilder,
          (Category, $$CategoriesTableReferences),
          Category,
          PrefetchHooks Function({bool venueCategoriesRefs})
        > {
  $$CategoriesTableTableManager(_$AppDatabase db, $CategoriesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CategoriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CategoriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CategoriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> labelJa = const Value.absent(),
                Value<String> labelEn = const Value.absent(),
                Value<int> isNightlife = const Value.absent(),
                Value<int> sortOrder = const Value.absent(),
                Value<int> isActive = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CategoriesCompanion(
                id: id,
                labelJa: labelJa,
                labelEn: labelEn,
                isNightlife: isNightlife,
                sortOrder: sortOrder,
                isActive: isActive,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String labelJa,
                required String labelEn,
                required int isNightlife,
                required int sortOrder,
                required int isActive,
                Value<int> rowid = const Value.absent(),
              }) => CategoriesCompanion.insert(
                id: id,
                labelJa: labelJa,
                labelEn: labelEn,
                isNightlife: isNightlife,
                sortOrder: sortOrder,
                isActive: isActive,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$CategoriesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({venueCategoriesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (venueCategoriesRefs) db.venueCategories,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (venueCategoriesRefs)
                    await $_getPrefetchedData<
                      Category,
                      $CategoriesTable,
                      VenueCategory
                    >(
                      currentTable: table,
                      referencedTable: $$CategoriesTableReferences
                          ._venueCategoriesRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$CategoriesTableReferences(
                            db,
                            table,
                            p0,
                          ).venueCategoriesRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.categoryId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$CategoriesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CategoriesTable,
      Category,
      $$CategoriesTableFilterComposer,
      $$CategoriesTableOrderingComposer,
      $$CategoriesTableAnnotationComposer,
      $$CategoriesTableCreateCompanionBuilder,
      $$CategoriesTableUpdateCompanionBuilder,
      (Category, $$CategoriesTableReferences),
      Category,
      PrefetchHooks Function({bool venueCategoriesRefs})
    >;
typedef $$VenuesTableCreateCompanionBuilder =
    VenuesCompanion Function({
      required String id,
      required String areaId,
      required String nameJa,
      required String nameEn,
      required double lat,
      required double lng,
      required String addressJa,
      required String addressEn,
      required String phone,
      required String websiteUrl,
      required String notesJa,
      required String notesEn,
      required String seatingType,
      required String smokingPolicy,
      required String paymentPolicy,
      required int coverChargeYen,
      required String otoshi,
      required String englishMenu,
      required int lastVerifiedAt,
      required String verifiedMethod,
      required int isActive,
      required int createdAt,
      required int updatedAt,
      Value<int> rowid,
    });
typedef $$VenuesTableUpdateCompanionBuilder =
    VenuesCompanion Function({
      Value<String> id,
      Value<String> areaId,
      Value<String> nameJa,
      Value<String> nameEn,
      Value<double> lat,
      Value<double> lng,
      Value<String> addressJa,
      Value<String> addressEn,
      Value<String> phone,
      Value<String> websiteUrl,
      Value<String> notesJa,
      Value<String> notesEn,
      Value<String> seatingType,
      Value<String> smokingPolicy,
      Value<String> paymentPolicy,
      Value<int> coverChargeYen,
      Value<String> otoshi,
      Value<String> englishMenu,
      Value<int> lastVerifiedAt,
      Value<String> verifiedMethod,
      Value<int> isActive,
      Value<int> createdAt,
      Value<int> updatedAt,
      Value<int> rowid,
    });

final class $$VenuesTableReferences
    extends BaseReferences<_$AppDatabase, $VenuesTable, Venue> {
  $$VenuesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $AreasTable _areaIdTable(_$AppDatabase db) =>
      db.areas.createAlias($_aliasNameGenerator(db.venues.areaId, db.areas.id));

  $$AreasTableProcessedTableManager get areaId {
    final $_column = $_itemColumn<String>('area_id')!;

    final manager = $$AreasTableTableManager(
      $_db,
      $_db.areas,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_areaIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$VenueCategoriesTable, List<VenueCategory>>
  _venueCategoriesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.venueCategories,
    aliasName: $_aliasNameGenerator(db.venues.id, db.venueCategories.venueId),
  );

  $$VenueCategoriesTableProcessedTableManager get venueCategoriesRefs {
    final manager = $$VenueCategoriesTableTableManager(
      $_db,
      $_db.venueCategories,
    ).filter((f) => f.venueId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _venueCategoriesRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$OpeningHoursTable, List<OpeningHour>>
  _openingHoursRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.openingHours,
    aliasName: $_aliasNameGenerator(db.venues.id, db.openingHours.venueId),
  );

  $$OpeningHoursTableProcessedTableManager get openingHoursRefs {
    final manager = $$OpeningHoursTableTableManager(
      $_db,
      $_db.openingHours,
    ).filter((f) => f.venueId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_openingHoursRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$HappyHoursTable, List<HappyHour>>
  _happyHoursRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.happyHours,
    aliasName: $_aliasNameGenerator(db.venues.id, db.happyHours.venueId),
  );

  $$HappyHoursTableProcessedTableManager get happyHoursRefs {
    final manager = $$HappyHoursTableTableManager(
      $_db,
      $_db.happyHours,
    ).filter((f) => f.venueId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_happyHoursRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$OffersTable, List<Offer>> _offersRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.offers,
    aliasName: $_aliasNameGenerator(db.venues.id, db.offers.venueId),
  );

  $$OffersTableProcessedTableManager get offersRefs {
    final manager = $$OffersTableTableManager(
      $_db,
      $_db.offers,
    ).filter((f) => f.venueId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_offersRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$NightlifePricingTable, List<NightlifePricingData>>
  _nightlifePricingRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.nightlifePricing,
    aliasName: $_aliasNameGenerator(db.venues.id, db.nightlifePricing.venueId),
  );

  $$NightlifePricingTableProcessedTableManager get nightlifePricingRefs {
    final manager = $$NightlifePricingTableTableManager(
      $_db,
      $_db.nightlifePricing,
    ).filter((f) => f.venueId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _nightlifePricingRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$RouteStopsTable, List<RouteStop>>
  _routeStopsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.routeStops,
    aliasName: $_aliasNameGenerator(db.venues.id, db.routeStops.venueId),
  );

  $$RouteStopsTableProcessedTableManager get routeStopsRefs {
    final manager = $$RouteStopsTableTableManager(
      $_db,
      $_db.routeStops,
    ).filter((f) => f.venueId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_routeStopsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$FavoritesTable, List<Favorite>>
  _favoritesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.favorites,
    aliasName: $_aliasNameGenerator(db.venues.id, db.favorites.venueId),
  );

  $$FavoritesTableProcessedTableManager get favoritesRefs {
    final manager = $$FavoritesTableTableManager(
      $_db,
      $_db.favorites,
    ).filter((f) => f.venueId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_favoritesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$EventQueueTable, List<EventQueueData>>
  _eventQueueRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.eventQueue,
    aliasName: $_aliasNameGenerator(db.venues.id, db.eventQueue.venueId),
  );

  $$EventQueueTableProcessedTableManager get eventQueueRefs {
    final manager = $$EventQueueTableTableManager(
      $_db,
      $_db.eventQueue,
    ).filter((f) => f.venueId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_eventQueueRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$VenuesTableFilterComposer
    extends Composer<_$AppDatabase, $VenuesTable> {
  $$VenuesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nameJa => $composableBuilder(
    column: $table.nameJa,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nameEn => $composableBuilder(
    column: $table.nameEn,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get lat => $composableBuilder(
    column: $table.lat,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get lng => $composableBuilder(
    column: $table.lng,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get addressJa => $composableBuilder(
    column: $table.addressJa,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get addressEn => $composableBuilder(
    column: $table.addressEn,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get phone => $composableBuilder(
    column: $table.phone,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get websiteUrl => $composableBuilder(
    column: $table.websiteUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get notesJa => $composableBuilder(
    column: $table.notesJa,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get notesEn => $composableBuilder(
    column: $table.notesEn,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get seatingType => $composableBuilder(
    column: $table.seatingType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get smokingPolicy => $composableBuilder(
    column: $table.smokingPolicy,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get paymentPolicy => $composableBuilder(
    column: $table.paymentPolicy,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get coverChargeYen => $composableBuilder(
    column: $table.coverChargeYen,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get otoshi => $composableBuilder(
    column: $table.otoshi,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get englishMenu => $composableBuilder(
    column: $table.englishMenu,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get lastVerifiedAt => $composableBuilder(
    column: $table.lastVerifiedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get verifiedMethod => $composableBuilder(
    column: $table.verifiedMethod,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  $$AreasTableFilterComposer get areaId {
    final $$AreasTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.areaId,
      referencedTable: $db.areas,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AreasTableFilterComposer(
            $db: $db,
            $table: $db.areas,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> venueCategoriesRefs(
    Expression<bool> Function($$VenueCategoriesTableFilterComposer f) f,
  ) {
    final $$VenueCategoriesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.venueCategories,
      getReferencedColumn: (t) => t.venueId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VenueCategoriesTableFilterComposer(
            $db: $db,
            $table: $db.venueCategories,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> openingHoursRefs(
    Expression<bool> Function($$OpeningHoursTableFilterComposer f) f,
  ) {
    final $$OpeningHoursTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.openingHours,
      getReferencedColumn: (t) => t.venueId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$OpeningHoursTableFilterComposer(
            $db: $db,
            $table: $db.openingHours,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> happyHoursRefs(
    Expression<bool> Function($$HappyHoursTableFilterComposer f) f,
  ) {
    final $$HappyHoursTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.happyHours,
      getReferencedColumn: (t) => t.venueId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$HappyHoursTableFilterComposer(
            $db: $db,
            $table: $db.happyHours,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> offersRefs(
    Expression<bool> Function($$OffersTableFilterComposer f) f,
  ) {
    final $$OffersTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.offers,
      getReferencedColumn: (t) => t.venueId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$OffersTableFilterComposer(
            $db: $db,
            $table: $db.offers,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> nightlifePricingRefs(
    Expression<bool> Function($$NightlifePricingTableFilterComposer f) f,
  ) {
    final $$NightlifePricingTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.nightlifePricing,
      getReferencedColumn: (t) => t.venueId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$NightlifePricingTableFilterComposer(
            $db: $db,
            $table: $db.nightlifePricing,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> routeStopsRefs(
    Expression<bool> Function($$RouteStopsTableFilterComposer f) f,
  ) {
    final $$RouteStopsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.routeStops,
      getReferencedColumn: (t) => t.venueId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RouteStopsTableFilterComposer(
            $db: $db,
            $table: $db.routeStops,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> favoritesRefs(
    Expression<bool> Function($$FavoritesTableFilterComposer f) f,
  ) {
    final $$FavoritesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.favorites,
      getReferencedColumn: (t) => t.venueId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FavoritesTableFilterComposer(
            $db: $db,
            $table: $db.favorites,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> eventQueueRefs(
    Expression<bool> Function($$EventQueueTableFilterComposer f) f,
  ) {
    final $$EventQueueTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.eventQueue,
      getReferencedColumn: (t) => t.venueId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EventQueueTableFilterComposer(
            $db: $db,
            $table: $db.eventQueue,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$VenuesTableOrderingComposer
    extends Composer<_$AppDatabase, $VenuesTable> {
  $$VenuesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nameJa => $composableBuilder(
    column: $table.nameJa,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nameEn => $composableBuilder(
    column: $table.nameEn,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get lat => $composableBuilder(
    column: $table.lat,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get lng => $composableBuilder(
    column: $table.lng,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get addressJa => $composableBuilder(
    column: $table.addressJa,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get addressEn => $composableBuilder(
    column: $table.addressEn,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get phone => $composableBuilder(
    column: $table.phone,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get websiteUrl => $composableBuilder(
    column: $table.websiteUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get notesJa => $composableBuilder(
    column: $table.notesJa,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get notesEn => $composableBuilder(
    column: $table.notesEn,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get seatingType => $composableBuilder(
    column: $table.seatingType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get smokingPolicy => $composableBuilder(
    column: $table.smokingPolicy,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get paymentPolicy => $composableBuilder(
    column: $table.paymentPolicy,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get coverChargeYen => $composableBuilder(
    column: $table.coverChargeYen,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get otoshi => $composableBuilder(
    column: $table.otoshi,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get englishMenu => $composableBuilder(
    column: $table.englishMenu,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get lastVerifiedAt => $composableBuilder(
    column: $table.lastVerifiedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get verifiedMethod => $composableBuilder(
    column: $table.verifiedMethod,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$AreasTableOrderingComposer get areaId {
    final $$AreasTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.areaId,
      referencedTable: $db.areas,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AreasTableOrderingComposer(
            $db: $db,
            $table: $db.areas,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$VenuesTableAnnotationComposer
    extends Composer<_$AppDatabase, $VenuesTable> {
  $$VenuesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get nameJa =>
      $composableBuilder(column: $table.nameJa, builder: (column) => column);

  GeneratedColumn<String> get nameEn =>
      $composableBuilder(column: $table.nameEn, builder: (column) => column);

  GeneratedColumn<double> get lat =>
      $composableBuilder(column: $table.lat, builder: (column) => column);

  GeneratedColumn<double> get lng =>
      $composableBuilder(column: $table.lng, builder: (column) => column);

  GeneratedColumn<String> get addressJa =>
      $composableBuilder(column: $table.addressJa, builder: (column) => column);

  GeneratedColumn<String> get addressEn =>
      $composableBuilder(column: $table.addressEn, builder: (column) => column);

  GeneratedColumn<String> get phone =>
      $composableBuilder(column: $table.phone, builder: (column) => column);

  GeneratedColumn<String> get websiteUrl => $composableBuilder(
    column: $table.websiteUrl,
    builder: (column) => column,
  );

  GeneratedColumn<String> get notesJa =>
      $composableBuilder(column: $table.notesJa, builder: (column) => column);

  GeneratedColumn<String> get notesEn =>
      $composableBuilder(column: $table.notesEn, builder: (column) => column);

  GeneratedColumn<String> get seatingType => $composableBuilder(
    column: $table.seatingType,
    builder: (column) => column,
  );

  GeneratedColumn<String> get smokingPolicy => $composableBuilder(
    column: $table.smokingPolicy,
    builder: (column) => column,
  );

  GeneratedColumn<String> get paymentPolicy => $composableBuilder(
    column: $table.paymentPolicy,
    builder: (column) => column,
  );

  GeneratedColumn<int> get coverChargeYen => $composableBuilder(
    column: $table.coverChargeYen,
    builder: (column) => column,
  );

  GeneratedColumn<String> get otoshi =>
      $composableBuilder(column: $table.otoshi, builder: (column) => column);

  GeneratedColumn<String> get englishMenu => $composableBuilder(
    column: $table.englishMenu,
    builder: (column) => column,
  );

  GeneratedColumn<int> get lastVerifiedAt => $composableBuilder(
    column: $table.lastVerifiedAt,
    builder: (column) => column,
  );

  GeneratedColumn<String> get verifiedMethod => $composableBuilder(
    column: $table.verifiedMethod,
    builder: (column) => column,
  );

  GeneratedColumn<int> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<int> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<int> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  $$AreasTableAnnotationComposer get areaId {
    final $$AreasTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.areaId,
      referencedTable: $db.areas,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AreasTableAnnotationComposer(
            $db: $db,
            $table: $db.areas,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> venueCategoriesRefs<T extends Object>(
    Expression<T> Function($$VenueCategoriesTableAnnotationComposer a) f,
  ) {
    final $$VenueCategoriesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.venueCategories,
      getReferencedColumn: (t) => t.venueId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VenueCategoriesTableAnnotationComposer(
            $db: $db,
            $table: $db.venueCategories,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> openingHoursRefs<T extends Object>(
    Expression<T> Function($$OpeningHoursTableAnnotationComposer a) f,
  ) {
    final $$OpeningHoursTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.openingHours,
      getReferencedColumn: (t) => t.venueId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$OpeningHoursTableAnnotationComposer(
            $db: $db,
            $table: $db.openingHours,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> happyHoursRefs<T extends Object>(
    Expression<T> Function($$HappyHoursTableAnnotationComposer a) f,
  ) {
    final $$HappyHoursTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.happyHours,
      getReferencedColumn: (t) => t.venueId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$HappyHoursTableAnnotationComposer(
            $db: $db,
            $table: $db.happyHours,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> offersRefs<T extends Object>(
    Expression<T> Function($$OffersTableAnnotationComposer a) f,
  ) {
    final $$OffersTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.offers,
      getReferencedColumn: (t) => t.venueId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$OffersTableAnnotationComposer(
            $db: $db,
            $table: $db.offers,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> nightlifePricingRefs<T extends Object>(
    Expression<T> Function($$NightlifePricingTableAnnotationComposer a) f,
  ) {
    final $$NightlifePricingTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.nightlifePricing,
      getReferencedColumn: (t) => t.venueId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$NightlifePricingTableAnnotationComposer(
            $db: $db,
            $table: $db.nightlifePricing,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> routeStopsRefs<T extends Object>(
    Expression<T> Function($$RouteStopsTableAnnotationComposer a) f,
  ) {
    final $$RouteStopsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.routeStops,
      getReferencedColumn: (t) => t.venueId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RouteStopsTableAnnotationComposer(
            $db: $db,
            $table: $db.routeStops,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> favoritesRefs<T extends Object>(
    Expression<T> Function($$FavoritesTableAnnotationComposer a) f,
  ) {
    final $$FavoritesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.favorites,
      getReferencedColumn: (t) => t.venueId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FavoritesTableAnnotationComposer(
            $db: $db,
            $table: $db.favorites,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> eventQueueRefs<T extends Object>(
    Expression<T> Function($$EventQueueTableAnnotationComposer a) f,
  ) {
    final $$EventQueueTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.eventQueue,
      getReferencedColumn: (t) => t.venueId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EventQueueTableAnnotationComposer(
            $db: $db,
            $table: $db.eventQueue,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$VenuesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $VenuesTable,
          Venue,
          $$VenuesTableFilterComposer,
          $$VenuesTableOrderingComposer,
          $$VenuesTableAnnotationComposer,
          $$VenuesTableCreateCompanionBuilder,
          $$VenuesTableUpdateCompanionBuilder,
          (Venue, $$VenuesTableReferences),
          Venue,
          PrefetchHooks Function({
            bool areaId,
            bool venueCategoriesRefs,
            bool openingHoursRefs,
            bool happyHoursRefs,
            bool offersRefs,
            bool nightlifePricingRefs,
            bool routeStopsRefs,
            bool favoritesRefs,
            bool eventQueueRefs,
          })
        > {
  $$VenuesTableTableManager(_$AppDatabase db, $VenuesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$VenuesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$VenuesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$VenuesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> areaId = const Value.absent(),
                Value<String> nameJa = const Value.absent(),
                Value<String> nameEn = const Value.absent(),
                Value<double> lat = const Value.absent(),
                Value<double> lng = const Value.absent(),
                Value<String> addressJa = const Value.absent(),
                Value<String> addressEn = const Value.absent(),
                Value<String> phone = const Value.absent(),
                Value<String> websiteUrl = const Value.absent(),
                Value<String> notesJa = const Value.absent(),
                Value<String> notesEn = const Value.absent(),
                Value<String> seatingType = const Value.absent(),
                Value<String> smokingPolicy = const Value.absent(),
                Value<String> paymentPolicy = const Value.absent(),
                Value<int> coverChargeYen = const Value.absent(),
                Value<String> otoshi = const Value.absent(),
                Value<String> englishMenu = const Value.absent(),
                Value<int> lastVerifiedAt = const Value.absent(),
                Value<String> verifiedMethod = const Value.absent(),
                Value<int> isActive = const Value.absent(),
                Value<int> createdAt = const Value.absent(),
                Value<int> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => VenuesCompanion(
                id: id,
                areaId: areaId,
                nameJa: nameJa,
                nameEn: nameEn,
                lat: lat,
                lng: lng,
                addressJa: addressJa,
                addressEn: addressEn,
                phone: phone,
                websiteUrl: websiteUrl,
                notesJa: notesJa,
                notesEn: notesEn,
                seatingType: seatingType,
                smokingPolicy: smokingPolicy,
                paymentPolicy: paymentPolicy,
                coverChargeYen: coverChargeYen,
                otoshi: otoshi,
                englishMenu: englishMenu,
                lastVerifiedAt: lastVerifiedAt,
                verifiedMethod: verifiedMethod,
                isActive: isActive,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String areaId,
                required String nameJa,
                required String nameEn,
                required double lat,
                required double lng,
                required String addressJa,
                required String addressEn,
                required String phone,
                required String websiteUrl,
                required String notesJa,
                required String notesEn,
                required String seatingType,
                required String smokingPolicy,
                required String paymentPolicy,
                required int coverChargeYen,
                required String otoshi,
                required String englishMenu,
                required int lastVerifiedAt,
                required String verifiedMethod,
                required int isActive,
                required int createdAt,
                required int updatedAt,
                Value<int> rowid = const Value.absent(),
              }) => VenuesCompanion.insert(
                id: id,
                areaId: areaId,
                nameJa: nameJa,
                nameEn: nameEn,
                lat: lat,
                lng: lng,
                addressJa: addressJa,
                addressEn: addressEn,
                phone: phone,
                websiteUrl: websiteUrl,
                notesJa: notesJa,
                notesEn: notesEn,
                seatingType: seatingType,
                smokingPolicy: smokingPolicy,
                paymentPolicy: paymentPolicy,
                coverChargeYen: coverChargeYen,
                otoshi: otoshi,
                englishMenu: englishMenu,
                lastVerifiedAt: lastVerifiedAt,
                verifiedMethod: verifiedMethod,
                isActive: isActive,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) =>
                    (e.readTable(table), $$VenuesTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                areaId = false,
                venueCategoriesRefs = false,
                openingHoursRefs = false,
                happyHoursRefs = false,
                offersRefs = false,
                nightlifePricingRefs = false,
                routeStopsRefs = false,
                favoritesRefs = false,
                eventQueueRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (venueCategoriesRefs) db.venueCategories,
                    if (openingHoursRefs) db.openingHours,
                    if (happyHoursRefs) db.happyHours,
                    if (offersRefs) db.offers,
                    if (nightlifePricingRefs) db.nightlifePricing,
                    if (routeStopsRefs) db.routeStops,
                    if (favoritesRefs) db.favorites,
                    if (eventQueueRefs) db.eventQueue,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (areaId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.areaId,
                                    referencedTable: $$VenuesTableReferences
                                        ._areaIdTable(db),
                                    referencedColumn: $$VenuesTableReferences
                                        ._areaIdTable(db)
                                        .id,
                                  )
                                  as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (venueCategoriesRefs)
                        await $_getPrefetchedData<
                          Venue,
                          $VenuesTable,
                          VenueCategory
                        >(
                          currentTable: table,
                          referencedTable: $$VenuesTableReferences
                              ._venueCategoriesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$VenuesTableReferences(
                                db,
                                table,
                                p0,
                              ).venueCategoriesRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.venueId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (openingHoursRefs)
                        await $_getPrefetchedData<
                          Venue,
                          $VenuesTable,
                          OpeningHour
                        >(
                          currentTable: table,
                          referencedTable: $$VenuesTableReferences
                              ._openingHoursRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$VenuesTableReferences(
                                db,
                                table,
                                p0,
                              ).openingHoursRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.venueId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (happyHoursRefs)
                        await $_getPrefetchedData<
                          Venue,
                          $VenuesTable,
                          HappyHour
                        >(
                          currentTable: table,
                          referencedTable: $$VenuesTableReferences
                              ._happyHoursRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$VenuesTableReferences(
                                db,
                                table,
                                p0,
                              ).happyHoursRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.venueId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (offersRefs)
                        await $_getPrefetchedData<Venue, $VenuesTable, Offer>(
                          currentTable: table,
                          referencedTable: $$VenuesTableReferences
                              ._offersRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$VenuesTableReferences(db, table, p0).offersRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.venueId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (nightlifePricingRefs)
                        await $_getPrefetchedData<
                          Venue,
                          $VenuesTable,
                          NightlifePricingData
                        >(
                          currentTable: table,
                          referencedTable: $$VenuesTableReferences
                              ._nightlifePricingRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$VenuesTableReferences(
                                db,
                                table,
                                p0,
                              ).nightlifePricingRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.venueId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (routeStopsRefs)
                        await $_getPrefetchedData<
                          Venue,
                          $VenuesTable,
                          RouteStop
                        >(
                          currentTable: table,
                          referencedTable: $$VenuesTableReferences
                              ._routeStopsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$VenuesTableReferences(
                                db,
                                table,
                                p0,
                              ).routeStopsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.venueId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (favoritesRefs)
                        await $_getPrefetchedData<
                          Venue,
                          $VenuesTable,
                          Favorite
                        >(
                          currentTable: table,
                          referencedTable: $$VenuesTableReferences
                              ._favoritesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$VenuesTableReferences(
                                db,
                                table,
                                p0,
                              ).favoritesRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.venueId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (eventQueueRefs)
                        await $_getPrefetchedData<
                          Venue,
                          $VenuesTable,
                          EventQueueData
                        >(
                          currentTable: table,
                          referencedTable: $$VenuesTableReferences
                              ._eventQueueRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$VenuesTableReferences(
                                db,
                                table,
                                p0,
                              ).eventQueueRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.venueId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$VenuesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $VenuesTable,
      Venue,
      $$VenuesTableFilterComposer,
      $$VenuesTableOrderingComposer,
      $$VenuesTableAnnotationComposer,
      $$VenuesTableCreateCompanionBuilder,
      $$VenuesTableUpdateCompanionBuilder,
      (Venue, $$VenuesTableReferences),
      Venue,
      PrefetchHooks Function({
        bool areaId,
        bool venueCategoriesRefs,
        bool openingHoursRefs,
        bool happyHoursRefs,
        bool offersRefs,
        bool nightlifePricingRefs,
        bool routeStopsRefs,
        bool favoritesRefs,
        bool eventQueueRefs,
      })
    >;
typedef $$VenueCategoriesTableCreateCompanionBuilder =
    VenueCategoriesCompanion Function({
      required String venueId,
      required String categoryId,
      Value<int> rowid,
    });
typedef $$VenueCategoriesTableUpdateCompanionBuilder =
    VenueCategoriesCompanion Function({
      Value<String> venueId,
      Value<String> categoryId,
      Value<int> rowid,
    });

final class $$VenueCategoriesTableReferences
    extends
        BaseReferences<_$AppDatabase, $VenueCategoriesTable, VenueCategory> {
  $$VenueCategoriesTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $VenuesTable _venueIdTable(_$AppDatabase db) => db.venues.createAlias(
    $_aliasNameGenerator(db.venueCategories.venueId, db.venues.id),
  );

  $$VenuesTableProcessedTableManager get venueId {
    final $_column = $_itemColumn<String>('venue_id')!;

    final manager = $$VenuesTableTableManager(
      $_db,
      $_db.venues,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_venueIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $CategoriesTable _categoryIdTable(_$AppDatabase db) =>
      db.categories.createAlias(
        $_aliasNameGenerator(db.venueCategories.categoryId, db.categories.id),
      );

  $$CategoriesTableProcessedTableManager get categoryId {
    final $_column = $_itemColumn<String>('category_id')!;

    final manager = $$CategoriesTableTableManager(
      $_db,
      $_db.categories,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_categoryIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$VenueCategoriesTableFilterComposer
    extends Composer<_$AppDatabase, $VenueCategoriesTable> {
  $$VenueCategoriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$VenuesTableFilterComposer get venueId {
    final $$VenuesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.venueId,
      referencedTable: $db.venues,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VenuesTableFilterComposer(
            $db: $db,
            $table: $db.venues,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$CategoriesTableFilterComposer get categoryId {
    final $$CategoriesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.categoryId,
      referencedTable: $db.categories,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoriesTableFilterComposer(
            $db: $db,
            $table: $db.categories,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$VenueCategoriesTableOrderingComposer
    extends Composer<_$AppDatabase, $VenueCategoriesTable> {
  $$VenueCategoriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$VenuesTableOrderingComposer get venueId {
    final $$VenuesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.venueId,
      referencedTable: $db.venues,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VenuesTableOrderingComposer(
            $db: $db,
            $table: $db.venues,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$CategoriesTableOrderingComposer get categoryId {
    final $$CategoriesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.categoryId,
      referencedTable: $db.categories,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoriesTableOrderingComposer(
            $db: $db,
            $table: $db.categories,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$VenueCategoriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $VenueCategoriesTable> {
  $$VenueCategoriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$VenuesTableAnnotationComposer get venueId {
    final $$VenuesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.venueId,
      referencedTable: $db.venues,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VenuesTableAnnotationComposer(
            $db: $db,
            $table: $db.venues,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$CategoriesTableAnnotationComposer get categoryId {
    final $$CategoriesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.categoryId,
      referencedTable: $db.categories,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoriesTableAnnotationComposer(
            $db: $db,
            $table: $db.categories,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$VenueCategoriesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $VenueCategoriesTable,
          VenueCategory,
          $$VenueCategoriesTableFilterComposer,
          $$VenueCategoriesTableOrderingComposer,
          $$VenueCategoriesTableAnnotationComposer,
          $$VenueCategoriesTableCreateCompanionBuilder,
          $$VenueCategoriesTableUpdateCompanionBuilder,
          (VenueCategory, $$VenueCategoriesTableReferences),
          VenueCategory,
          PrefetchHooks Function({bool venueId, bool categoryId})
        > {
  $$VenueCategoriesTableTableManager(
    _$AppDatabase db,
    $VenueCategoriesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$VenueCategoriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$VenueCategoriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$VenueCategoriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> venueId = const Value.absent(),
                Value<String> categoryId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => VenueCategoriesCompanion(
                venueId: venueId,
                categoryId: categoryId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String venueId,
                required String categoryId,
                Value<int> rowid = const Value.absent(),
              }) => VenueCategoriesCompanion.insert(
                venueId: venueId,
                categoryId: categoryId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$VenueCategoriesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({venueId = false, categoryId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (venueId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.venueId,
                                referencedTable:
                                    $$VenueCategoriesTableReferences
                                        ._venueIdTable(db),
                                referencedColumn:
                                    $$VenueCategoriesTableReferences
                                        ._venueIdTable(db)
                                        .id,
                              )
                              as T;
                    }
                    if (categoryId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.categoryId,
                                referencedTable:
                                    $$VenueCategoriesTableReferences
                                        ._categoryIdTable(db),
                                referencedColumn:
                                    $$VenueCategoriesTableReferences
                                        ._categoryIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$VenueCategoriesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $VenueCategoriesTable,
      VenueCategory,
      $$VenueCategoriesTableFilterComposer,
      $$VenueCategoriesTableOrderingComposer,
      $$VenueCategoriesTableAnnotationComposer,
      $$VenueCategoriesTableCreateCompanionBuilder,
      $$VenueCategoriesTableUpdateCompanionBuilder,
      (VenueCategory, $$VenueCategoriesTableReferences),
      VenueCategory,
      PrefetchHooks Function({bool venueId, bool categoryId})
    >;
typedef $$OpeningHoursTableCreateCompanionBuilder =
    OpeningHoursCompanion Function({
      required String id,
      required String venueId,
      required int dayOfWeek,
      required String openTime,
      required String closeTime,
      required int crossesMidnight,
      required String noteJa,
      required String noteEn,
      required int isActive,
      Value<int> rowid,
    });
typedef $$OpeningHoursTableUpdateCompanionBuilder =
    OpeningHoursCompanion Function({
      Value<String> id,
      Value<String> venueId,
      Value<int> dayOfWeek,
      Value<String> openTime,
      Value<String> closeTime,
      Value<int> crossesMidnight,
      Value<String> noteJa,
      Value<String> noteEn,
      Value<int> isActive,
      Value<int> rowid,
    });

final class $$OpeningHoursTableReferences
    extends BaseReferences<_$AppDatabase, $OpeningHoursTable, OpeningHour> {
  $$OpeningHoursTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $VenuesTable _venueIdTable(_$AppDatabase db) => db.venues.createAlias(
    $_aliasNameGenerator(db.openingHours.venueId, db.venues.id),
  );

  $$VenuesTableProcessedTableManager get venueId {
    final $_column = $_itemColumn<String>('venue_id')!;

    final manager = $$VenuesTableTableManager(
      $_db,
      $_db.venues,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_venueIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$OpeningHoursTableFilterComposer
    extends Composer<_$AppDatabase, $OpeningHoursTable> {
  $$OpeningHoursTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get dayOfWeek => $composableBuilder(
    column: $table.dayOfWeek,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get openTime => $composableBuilder(
    column: $table.openTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get closeTime => $composableBuilder(
    column: $table.closeTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get crossesMidnight => $composableBuilder(
    column: $table.crossesMidnight,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get noteJa => $composableBuilder(
    column: $table.noteJa,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get noteEn => $composableBuilder(
    column: $table.noteEn,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  $$VenuesTableFilterComposer get venueId {
    final $$VenuesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.venueId,
      referencedTable: $db.venues,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VenuesTableFilterComposer(
            $db: $db,
            $table: $db.venues,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$OpeningHoursTableOrderingComposer
    extends Composer<_$AppDatabase, $OpeningHoursTable> {
  $$OpeningHoursTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get dayOfWeek => $composableBuilder(
    column: $table.dayOfWeek,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get openTime => $composableBuilder(
    column: $table.openTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get closeTime => $composableBuilder(
    column: $table.closeTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get crossesMidnight => $composableBuilder(
    column: $table.crossesMidnight,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get noteJa => $composableBuilder(
    column: $table.noteJa,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get noteEn => $composableBuilder(
    column: $table.noteEn,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  $$VenuesTableOrderingComposer get venueId {
    final $$VenuesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.venueId,
      referencedTable: $db.venues,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VenuesTableOrderingComposer(
            $db: $db,
            $table: $db.venues,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$OpeningHoursTableAnnotationComposer
    extends Composer<_$AppDatabase, $OpeningHoursTable> {
  $$OpeningHoursTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get dayOfWeek =>
      $composableBuilder(column: $table.dayOfWeek, builder: (column) => column);

  GeneratedColumn<String> get openTime =>
      $composableBuilder(column: $table.openTime, builder: (column) => column);

  GeneratedColumn<String> get closeTime =>
      $composableBuilder(column: $table.closeTime, builder: (column) => column);

  GeneratedColumn<int> get crossesMidnight => $composableBuilder(
    column: $table.crossesMidnight,
    builder: (column) => column,
  );

  GeneratedColumn<String> get noteJa =>
      $composableBuilder(column: $table.noteJa, builder: (column) => column);

  GeneratedColumn<String> get noteEn =>
      $composableBuilder(column: $table.noteEn, builder: (column) => column);

  GeneratedColumn<int> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  $$VenuesTableAnnotationComposer get venueId {
    final $$VenuesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.venueId,
      referencedTable: $db.venues,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VenuesTableAnnotationComposer(
            $db: $db,
            $table: $db.venues,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$OpeningHoursTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $OpeningHoursTable,
          OpeningHour,
          $$OpeningHoursTableFilterComposer,
          $$OpeningHoursTableOrderingComposer,
          $$OpeningHoursTableAnnotationComposer,
          $$OpeningHoursTableCreateCompanionBuilder,
          $$OpeningHoursTableUpdateCompanionBuilder,
          (OpeningHour, $$OpeningHoursTableReferences),
          OpeningHour,
          PrefetchHooks Function({bool venueId})
        > {
  $$OpeningHoursTableTableManager(_$AppDatabase db, $OpeningHoursTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$OpeningHoursTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$OpeningHoursTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$OpeningHoursTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> venueId = const Value.absent(),
                Value<int> dayOfWeek = const Value.absent(),
                Value<String> openTime = const Value.absent(),
                Value<String> closeTime = const Value.absent(),
                Value<int> crossesMidnight = const Value.absent(),
                Value<String> noteJa = const Value.absent(),
                Value<String> noteEn = const Value.absent(),
                Value<int> isActive = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => OpeningHoursCompanion(
                id: id,
                venueId: venueId,
                dayOfWeek: dayOfWeek,
                openTime: openTime,
                closeTime: closeTime,
                crossesMidnight: crossesMidnight,
                noteJa: noteJa,
                noteEn: noteEn,
                isActive: isActive,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String venueId,
                required int dayOfWeek,
                required String openTime,
                required String closeTime,
                required int crossesMidnight,
                required String noteJa,
                required String noteEn,
                required int isActive,
                Value<int> rowid = const Value.absent(),
              }) => OpeningHoursCompanion.insert(
                id: id,
                venueId: venueId,
                dayOfWeek: dayOfWeek,
                openTime: openTime,
                closeTime: closeTime,
                crossesMidnight: crossesMidnight,
                noteJa: noteJa,
                noteEn: noteEn,
                isActive: isActive,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$OpeningHoursTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({venueId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (venueId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.venueId,
                                referencedTable: $$OpeningHoursTableReferences
                                    ._venueIdTable(db),
                                referencedColumn: $$OpeningHoursTableReferences
                                    ._venueIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$OpeningHoursTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $OpeningHoursTable,
      OpeningHour,
      $$OpeningHoursTableFilterComposer,
      $$OpeningHoursTableOrderingComposer,
      $$OpeningHoursTableAnnotationComposer,
      $$OpeningHoursTableCreateCompanionBuilder,
      $$OpeningHoursTableUpdateCompanionBuilder,
      (OpeningHour, $$OpeningHoursTableReferences),
      OpeningHour,
      PrefetchHooks Function({bool venueId})
    >;
typedef $$HappyHoursTableCreateCompanionBuilder =
    HappyHoursCompanion Function({
      required String id,
      required String venueId,
      required int dayOfWeek,
      required String startTime,
      required String endTime,
      required String dealJa,
      required String dealEn,
      required String conditionsJa,
      required String conditionsEn,
      required int lastVerifiedAt,
      required String verifiedMethod,
      required int isActive,
      Value<int> rowid,
    });
typedef $$HappyHoursTableUpdateCompanionBuilder =
    HappyHoursCompanion Function({
      Value<String> id,
      Value<String> venueId,
      Value<int> dayOfWeek,
      Value<String> startTime,
      Value<String> endTime,
      Value<String> dealJa,
      Value<String> dealEn,
      Value<String> conditionsJa,
      Value<String> conditionsEn,
      Value<int> lastVerifiedAt,
      Value<String> verifiedMethod,
      Value<int> isActive,
      Value<int> rowid,
    });

final class $$HappyHoursTableReferences
    extends BaseReferences<_$AppDatabase, $HappyHoursTable, HappyHour> {
  $$HappyHoursTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $VenuesTable _venueIdTable(_$AppDatabase db) => db.venues.createAlias(
    $_aliasNameGenerator(db.happyHours.venueId, db.venues.id),
  );

  $$VenuesTableProcessedTableManager get venueId {
    final $_column = $_itemColumn<String>('venue_id')!;

    final manager = $$VenuesTableTableManager(
      $_db,
      $_db.venues,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_venueIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$HappyHoursTableFilterComposer
    extends Composer<_$AppDatabase, $HappyHoursTable> {
  $$HappyHoursTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get dayOfWeek => $composableBuilder(
    column: $table.dayOfWeek,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get startTime => $composableBuilder(
    column: $table.startTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get endTime => $composableBuilder(
    column: $table.endTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get dealJa => $composableBuilder(
    column: $table.dealJa,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get dealEn => $composableBuilder(
    column: $table.dealEn,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get conditionsJa => $composableBuilder(
    column: $table.conditionsJa,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get conditionsEn => $composableBuilder(
    column: $table.conditionsEn,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get lastVerifiedAt => $composableBuilder(
    column: $table.lastVerifiedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get verifiedMethod => $composableBuilder(
    column: $table.verifiedMethod,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  $$VenuesTableFilterComposer get venueId {
    final $$VenuesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.venueId,
      referencedTable: $db.venues,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VenuesTableFilterComposer(
            $db: $db,
            $table: $db.venues,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$HappyHoursTableOrderingComposer
    extends Composer<_$AppDatabase, $HappyHoursTable> {
  $$HappyHoursTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get dayOfWeek => $composableBuilder(
    column: $table.dayOfWeek,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get startTime => $composableBuilder(
    column: $table.startTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get endTime => $composableBuilder(
    column: $table.endTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get dealJa => $composableBuilder(
    column: $table.dealJa,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get dealEn => $composableBuilder(
    column: $table.dealEn,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get conditionsJa => $composableBuilder(
    column: $table.conditionsJa,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get conditionsEn => $composableBuilder(
    column: $table.conditionsEn,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get lastVerifiedAt => $composableBuilder(
    column: $table.lastVerifiedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get verifiedMethod => $composableBuilder(
    column: $table.verifiedMethod,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  $$VenuesTableOrderingComposer get venueId {
    final $$VenuesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.venueId,
      referencedTable: $db.venues,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VenuesTableOrderingComposer(
            $db: $db,
            $table: $db.venues,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$HappyHoursTableAnnotationComposer
    extends Composer<_$AppDatabase, $HappyHoursTable> {
  $$HappyHoursTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get dayOfWeek =>
      $composableBuilder(column: $table.dayOfWeek, builder: (column) => column);

  GeneratedColumn<String> get startTime =>
      $composableBuilder(column: $table.startTime, builder: (column) => column);

  GeneratedColumn<String> get endTime =>
      $composableBuilder(column: $table.endTime, builder: (column) => column);

  GeneratedColumn<String> get dealJa =>
      $composableBuilder(column: $table.dealJa, builder: (column) => column);

  GeneratedColumn<String> get dealEn =>
      $composableBuilder(column: $table.dealEn, builder: (column) => column);

  GeneratedColumn<String> get conditionsJa => $composableBuilder(
    column: $table.conditionsJa,
    builder: (column) => column,
  );

  GeneratedColumn<String> get conditionsEn => $composableBuilder(
    column: $table.conditionsEn,
    builder: (column) => column,
  );

  GeneratedColumn<int> get lastVerifiedAt => $composableBuilder(
    column: $table.lastVerifiedAt,
    builder: (column) => column,
  );

  GeneratedColumn<String> get verifiedMethod => $composableBuilder(
    column: $table.verifiedMethod,
    builder: (column) => column,
  );

  GeneratedColumn<int> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  $$VenuesTableAnnotationComposer get venueId {
    final $$VenuesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.venueId,
      referencedTable: $db.venues,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VenuesTableAnnotationComposer(
            $db: $db,
            $table: $db.venues,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$HappyHoursTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $HappyHoursTable,
          HappyHour,
          $$HappyHoursTableFilterComposer,
          $$HappyHoursTableOrderingComposer,
          $$HappyHoursTableAnnotationComposer,
          $$HappyHoursTableCreateCompanionBuilder,
          $$HappyHoursTableUpdateCompanionBuilder,
          (HappyHour, $$HappyHoursTableReferences),
          HappyHour,
          PrefetchHooks Function({bool venueId})
        > {
  $$HappyHoursTableTableManager(_$AppDatabase db, $HappyHoursTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$HappyHoursTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$HappyHoursTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$HappyHoursTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> venueId = const Value.absent(),
                Value<int> dayOfWeek = const Value.absent(),
                Value<String> startTime = const Value.absent(),
                Value<String> endTime = const Value.absent(),
                Value<String> dealJa = const Value.absent(),
                Value<String> dealEn = const Value.absent(),
                Value<String> conditionsJa = const Value.absent(),
                Value<String> conditionsEn = const Value.absent(),
                Value<int> lastVerifiedAt = const Value.absent(),
                Value<String> verifiedMethod = const Value.absent(),
                Value<int> isActive = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => HappyHoursCompanion(
                id: id,
                venueId: venueId,
                dayOfWeek: dayOfWeek,
                startTime: startTime,
                endTime: endTime,
                dealJa: dealJa,
                dealEn: dealEn,
                conditionsJa: conditionsJa,
                conditionsEn: conditionsEn,
                lastVerifiedAt: lastVerifiedAt,
                verifiedMethod: verifiedMethod,
                isActive: isActive,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String venueId,
                required int dayOfWeek,
                required String startTime,
                required String endTime,
                required String dealJa,
                required String dealEn,
                required String conditionsJa,
                required String conditionsEn,
                required int lastVerifiedAt,
                required String verifiedMethod,
                required int isActive,
                Value<int> rowid = const Value.absent(),
              }) => HappyHoursCompanion.insert(
                id: id,
                venueId: venueId,
                dayOfWeek: dayOfWeek,
                startTime: startTime,
                endTime: endTime,
                dealJa: dealJa,
                dealEn: dealEn,
                conditionsJa: conditionsJa,
                conditionsEn: conditionsEn,
                lastVerifiedAt: lastVerifiedAt,
                verifiedMethod: verifiedMethod,
                isActive: isActive,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$HappyHoursTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({venueId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (venueId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.venueId,
                                referencedTable: $$HappyHoursTableReferences
                                    ._venueIdTable(db),
                                referencedColumn: $$HappyHoursTableReferences
                                    ._venueIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$HappyHoursTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $HappyHoursTable,
      HappyHour,
      $$HappyHoursTableFilterComposer,
      $$HappyHoursTableOrderingComposer,
      $$HappyHoursTableAnnotationComposer,
      $$HappyHoursTableCreateCompanionBuilder,
      $$HappyHoursTableUpdateCompanionBuilder,
      (HappyHour, $$HappyHoursTableReferences),
      HappyHour,
      PrefetchHooks Function({bool venueId})
    >;
typedef $$OffersTableCreateCompanionBuilder =
    OffersCompanion Function({
      required String id,
      required String venueId,
      required String type,
      required String titleJa,
      required String titleEn,
      required String conditionJa,
      required String conditionEn,
      required String detailsJa,
      required String detailsEn,
      required int validFrom,
      required int validTo,
      required int isActive,
      required int lastVerifiedAt,
      required String redeemMode,
      required String redeemHintJa,
      required String redeemHintEn,
      Value<int> rowid,
    });
typedef $$OffersTableUpdateCompanionBuilder =
    OffersCompanion Function({
      Value<String> id,
      Value<String> venueId,
      Value<String> type,
      Value<String> titleJa,
      Value<String> titleEn,
      Value<String> conditionJa,
      Value<String> conditionEn,
      Value<String> detailsJa,
      Value<String> detailsEn,
      Value<int> validFrom,
      Value<int> validTo,
      Value<int> isActive,
      Value<int> lastVerifiedAt,
      Value<String> redeemMode,
      Value<String> redeemHintJa,
      Value<String> redeemHintEn,
      Value<int> rowid,
    });

final class $$OffersTableReferences
    extends BaseReferences<_$AppDatabase, $OffersTable, Offer> {
  $$OffersTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $VenuesTable _venueIdTable(_$AppDatabase db) => db.venues.createAlias(
    $_aliasNameGenerator(db.offers.venueId, db.venues.id),
  );

  $$VenuesTableProcessedTableManager get venueId {
    final $_column = $_itemColumn<String>('venue_id')!;

    final manager = $$VenuesTableTableManager(
      $_db,
      $_db.venues,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_venueIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$OffersTableFilterComposer
    extends Composer<_$AppDatabase, $OffersTable> {
  $$OffersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get titleJa => $composableBuilder(
    column: $table.titleJa,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get titleEn => $composableBuilder(
    column: $table.titleEn,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get conditionJa => $composableBuilder(
    column: $table.conditionJa,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get conditionEn => $composableBuilder(
    column: $table.conditionEn,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get detailsJa => $composableBuilder(
    column: $table.detailsJa,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get detailsEn => $composableBuilder(
    column: $table.detailsEn,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get validFrom => $composableBuilder(
    column: $table.validFrom,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get validTo => $composableBuilder(
    column: $table.validTo,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get lastVerifiedAt => $composableBuilder(
    column: $table.lastVerifiedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get redeemMode => $composableBuilder(
    column: $table.redeemMode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get redeemHintJa => $composableBuilder(
    column: $table.redeemHintJa,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get redeemHintEn => $composableBuilder(
    column: $table.redeemHintEn,
    builder: (column) => ColumnFilters(column),
  );

  $$VenuesTableFilterComposer get venueId {
    final $$VenuesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.venueId,
      referencedTable: $db.venues,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VenuesTableFilterComposer(
            $db: $db,
            $table: $db.venues,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$OffersTableOrderingComposer
    extends Composer<_$AppDatabase, $OffersTable> {
  $$OffersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get titleJa => $composableBuilder(
    column: $table.titleJa,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get titleEn => $composableBuilder(
    column: $table.titleEn,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get conditionJa => $composableBuilder(
    column: $table.conditionJa,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get conditionEn => $composableBuilder(
    column: $table.conditionEn,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get detailsJa => $composableBuilder(
    column: $table.detailsJa,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get detailsEn => $composableBuilder(
    column: $table.detailsEn,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get validFrom => $composableBuilder(
    column: $table.validFrom,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get validTo => $composableBuilder(
    column: $table.validTo,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get lastVerifiedAt => $composableBuilder(
    column: $table.lastVerifiedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get redeemMode => $composableBuilder(
    column: $table.redeemMode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get redeemHintJa => $composableBuilder(
    column: $table.redeemHintJa,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get redeemHintEn => $composableBuilder(
    column: $table.redeemHintEn,
    builder: (column) => ColumnOrderings(column),
  );

  $$VenuesTableOrderingComposer get venueId {
    final $$VenuesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.venueId,
      referencedTable: $db.venues,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VenuesTableOrderingComposer(
            $db: $db,
            $table: $db.venues,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$OffersTableAnnotationComposer
    extends Composer<_$AppDatabase, $OffersTable> {
  $$OffersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get titleJa =>
      $composableBuilder(column: $table.titleJa, builder: (column) => column);

  GeneratedColumn<String> get titleEn =>
      $composableBuilder(column: $table.titleEn, builder: (column) => column);

  GeneratedColumn<String> get conditionJa => $composableBuilder(
    column: $table.conditionJa,
    builder: (column) => column,
  );

  GeneratedColumn<String> get conditionEn => $composableBuilder(
    column: $table.conditionEn,
    builder: (column) => column,
  );

  GeneratedColumn<String> get detailsJa =>
      $composableBuilder(column: $table.detailsJa, builder: (column) => column);

  GeneratedColumn<String> get detailsEn =>
      $composableBuilder(column: $table.detailsEn, builder: (column) => column);

  GeneratedColumn<int> get validFrom =>
      $composableBuilder(column: $table.validFrom, builder: (column) => column);

  GeneratedColumn<int> get validTo =>
      $composableBuilder(column: $table.validTo, builder: (column) => column);

  GeneratedColumn<int> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<int> get lastVerifiedAt => $composableBuilder(
    column: $table.lastVerifiedAt,
    builder: (column) => column,
  );

  GeneratedColumn<String> get redeemMode => $composableBuilder(
    column: $table.redeemMode,
    builder: (column) => column,
  );

  GeneratedColumn<String> get redeemHintJa => $composableBuilder(
    column: $table.redeemHintJa,
    builder: (column) => column,
  );

  GeneratedColumn<String> get redeemHintEn => $composableBuilder(
    column: $table.redeemHintEn,
    builder: (column) => column,
  );

  $$VenuesTableAnnotationComposer get venueId {
    final $$VenuesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.venueId,
      referencedTable: $db.venues,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VenuesTableAnnotationComposer(
            $db: $db,
            $table: $db.venues,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$OffersTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $OffersTable,
          Offer,
          $$OffersTableFilterComposer,
          $$OffersTableOrderingComposer,
          $$OffersTableAnnotationComposer,
          $$OffersTableCreateCompanionBuilder,
          $$OffersTableUpdateCompanionBuilder,
          (Offer, $$OffersTableReferences),
          Offer,
          PrefetchHooks Function({bool venueId})
        > {
  $$OffersTableTableManager(_$AppDatabase db, $OffersTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$OffersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$OffersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$OffersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> venueId = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<String> titleJa = const Value.absent(),
                Value<String> titleEn = const Value.absent(),
                Value<String> conditionJa = const Value.absent(),
                Value<String> conditionEn = const Value.absent(),
                Value<String> detailsJa = const Value.absent(),
                Value<String> detailsEn = const Value.absent(),
                Value<int> validFrom = const Value.absent(),
                Value<int> validTo = const Value.absent(),
                Value<int> isActive = const Value.absent(),
                Value<int> lastVerifiedAt = const Value.absent(),
                Value<String> redeemMode = const Value.absent(),
                Value<String> redeemHintJa = const Value.absent(),
                Value<String> redeemHintEn = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => OffersCompanion(
                id: id,
                venueId: venueId,
                type: type,
                titleJa: titleJa,
                titleEn: titleEn,
                conditionJa: conditionJa,
                conditionEn: conditionEn,
                detailsJa: detailsJa,
                detailsEn: detailsEn,
                validFrom: validFrom,
                validTo: validTo,
                isActive: isActive,
                lastVerifiedAt: lastVerifiedAt,
                redeemMode: redeemMode,
                redeemHintJa: redeemHintJa,
                redeemHintEn: redeemHintEn,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String venueId,
                required String type,
                required String titleJa,
                required String titleEn,
                required String conditionJa,
                required String conditionEn,
                required String detailsJa,
                required String detailsEn,
                required int validFrom,
                required int validTo,
                required int isActive,
                required int lastVerifiedAt,
                required String redeemMode,
                required String redeemHintJa,
                required String redeemHintEn,
                Value<int> rowid = const Value.absent(),
              }) => OffersCompanion.insert(
                id: id,
                venueId: venueId,
                type: type,
                titleJa: titleJa,
                titleEn: titleEn,
                conditionJa: conditionJa,
                conditionEn: conditionEn,
                detailsJa: detailsJa,
                detailsEn: detailsEn,
                validFrom: validFrom,
                validTo: validTo,
                isActive: isActive,
                lastVerifiedAt: lastVerifiedAt,
                redeemMode: redeemMode,
                redeemHintJa: redeemHintJa,
                redeemHintEn: redeemHintEn,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) =>
                    (e.readTable(table), $$OffersTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback: ({venueId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (venueId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.venueId,
                                referencedTable: $$OffersTableReferences
                                    ._venueIdTable(db),
                                referencedColumn: $$OffersTableReferences
                                    ._venueIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$OffersTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $OffersTable,
      Offer,
      $$OffersTableFilterComposer,
      $$OffersTableOrderingComposer,
      $$OffersTableAnnotationComposer,
      $$OffersTableCreateCompanionBuilder,
      $$OffersTableUpdateCompanionBuilder,
      (Offer, $$OffersTableReferences),
      Offer,
      PrefetchHooks Function({bool venueId})
    >;
typedef $$NightlifePricingTableCreateCompanionBuilder =
    NightlifePricingCompanion Function({
      required String venueId,
      required int firstSetMinutes,
      required int firstSetPriceYen,
      required int castDrinkPriceYen,
      required String additionalFeesNoteJa,
      required String additionalFeesNoteEn,
      required int lastVerifiedAt,
      required String verifiedMethod,
      Value<int> rowid,
    });
typedef $$NightlifePricingTableUpdateCompanionBuilder =
    NightlifePricingCompanion Function({
      Value<String> venueId,
      Value<int> firstSetMinutes,
      Value<int> firstSetPriceYen,
      Value<int> castDrinkPriceYen,
      Value<String> additionalFeesNoteJa,
      Value<String> additionalFeesNoteEn,
      Value<int> lastVerifiedAt,
      Value<String> verifiedMethod,
      Value<int> rowid,
    });

final class $$NightlifePricingTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $NightlifePricingTable,
          NightlifePricingData
        > {
  $$NightlifePricingTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $VenuesTable _venueIdTable(_$AppDatabase db) => db.venues.createAlias(
    $_aliasNameGenerator(db.nightlifePricing.venueId, db.venues.id),
  );

  $$VenuesTableProcessedTableManager get venueId {
    final $_column = $_itemColumn<String>('venue_id')!;

    final manager = $$VenuesTableTableManager(
      $_db,
      $_db.venues,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_venueIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$NightlifePricingTableFilterComposer
    extends Composer<_$AppDatabase, $NightlifePricingTable> {
  $$NightlifePricingTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get firstSetMinutes => $composableBuilder(
    column: $table.firstSetMinutes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get firstSetPriceYen => $composableBuilder(
    column: $table.firstSetPriceYen,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get castDrinkPriceYen => $composableBuilder(
    column: $table.castDrinkPriceYen,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get additionalFeesNoteJa => $composableBuilder(
    column: $table.additionalFeesNoteJa,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get additionalFeesNoteEn => $composableBuilder(
    column: $table.additionalFeesNoteEn,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get lastVerifiedAt => $composableBuilder(
    column: $table.lastVerifiedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get verifiedMethod => $composableBuilder(
    column: $table.verifiedMethod,
    builder: (column) => ColumnFilters(column),
  );

  $$VenuesTableFilterComposer get venueId {
    final $$VenuesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.venueId,
      referencedTable: $db.venues,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VenuesTableFilterComposer(
            $db: $db,
            $table: $db.venues,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$NightlifePricingTableOrderingComposer
    extends Composer<_$AppDatabase, $NightlifePricingTable> {
  $$NightlifePricingTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get firstSetMinutes => $composableBuilder(
    column: $table.firstSetMinutes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get firstSetPriceYen => $composableBuilder(
    column: $table.firstSetPriceYen,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get castDrinkPriceYen => $composableBuilder(
    column: $table.castDrinkPriceYen,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get additionalFeesNoteJa => $composableBuilder(
    column: $table.additionalFeesNoteJa,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get additionalFeesNoteEn => $composableBuilder(
    column: $table.additionalFeesNoteEn,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get lastVerifiedAt => $composableBuilder(
    column: $table.lastVerifiedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get verifiedMethod => $composableBuilder(
    column: $table.verifiedMethod,
    builder: (column) => ColumnOrderings(column),
  );

  $$VenuesTableOrderingComposer get venueId {
    final $$VenuesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.venueId,
      referencedTable: $db.venues,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VenuesTableOrderingComposer(
            $db: $db,
            $table: $db.venues,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$NightlifePricingTableAnnotationComposer
    extends Composer<_$AppDatabase, $NightlifePricingTable> {
  $$NightlifePricingTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get firstSetMinutes => $composableBuilder(
    column: $table.firstSetMinutes,
    builder: (column) => column,
  );

  GeneratedColumn<int> get firstSetPriceYen => $composableBuilder(
    column: $table.firstSetPriceYen,
    builder: (column) => column,
  );

  GeneratedColumn<int> get castDrinkPriceYen => $composableBuilder(
    column: $table.castDrinkPriceYen,
    builder: (column) => column,
  );

  GeneratedColumn<String> get additionalFeesNoteJa => $composableBuilder(
    column: $table.additionalFeesNoteJa,
    builder: (column) => column,
  );

  GeneratedColumn<String> get additionalFeesNoteEn => $composableBuilder(
    column: $table.additionalFeesNoteEn,
    builder: (column) => column,
  );

  GeneratedColumn<int> get lastVerifiedAt => $composableBuilder(
    column: $table.lastVerifiedAt,
    builder: (column) => column,
  );

  GeneratedColumn<String> get verifiedMethod => $composableBuilder(
    column: $table.verifiedMethod,
    builder: (column) => column,
  );

  $$VenuesTableAnnotationComposer get venueId {
    final $$VenuesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.venueId,
      referencedTable: $db.venues,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VenuesTableAnnotationComposer(
            $db: $db,
            $table: $db.venues,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$NightlifePricingTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $NightlifePricingTable,
          NightlifePricingData,
          $$NightlifePricingTableFilterComposer,
          $$NightlifePricingTableOrderingComposer,
          $$NightlifePricingTableAnnotationComposer,
          $$NightlifePricingTableCreateCompanionBuilder,
          $$NightlifePricingTableUpdateCompanionBuilder,
          (NightlifePricingData, $$NightlifePricingTableReferences),
          NightlifePricingData,
          PrefetchHooks Function({bool venueId})
        > {
  $$NightlifePricingTableTableManager(
    _$AppDatabase db,
    $NightlifePricingTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$NightlifePricingTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$NightlifePricingTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$NightlifePricingTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> venueId = const Value.absent(),
                Value<int> firstSetMinutes = const Value.absent(),
                Value<int> firstSetPriceYen = const Value.absent(),
                Value<int> castDrinkPriceYen = const Value.absent(),
                Value<String> additionalFeesNoteJa = const Value.absent(),
                Value<String> additionalFeesNoteEn = const Value.absent(),
                Value<int> lastVerifiedAt = const Value.absent(),
                Value<String> verifiedMethod = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => NightlifePricingCompanion(
                venueId: venueId,
                firstSetMinutes: firstSetMinutes,
                firstSetPriceYen: firstSetPriceYen,
                castDrinkPriceYen: castDrinkPriceYen,
                additionalFeesNoteJa: additionalFeesNoteJa,
                additionalFeesNoteEn: additionalFeesNoteEn,
                lastVerifiedAt: lastVerifiedAt,
                verifiedMethod: verifiedMethod,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String venueId,
                required int firstSetMinutes,
                required int firstSetPriceYen,
                required int castDrinkPriceYen,
                required String additionalFeesNoteJa,
                required String additionalFeesNoteEn,
                required int lastVerifiedAt,
                required String verifiedMethod,
                Value<int> rowid = const Value.absent(),
              }) => NightlifePricingCompanion.insert(
                venueId: venueId,
                firstSetMinutes: firstSetMinutes,
                firstSetPriceYen: firstSetPriceYen,
                castDrinkPriceYen: castDrinkPriceYen,
                additionalFeesNoteJa: additionalFeesNoteJa,
                additionalFeesNoteEn: additionalFeesNoteEn,
                lastVerifiedAt: lastVerifiedAt,
                verifiedMethod: verifiedMethod,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$NightlifePricingTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({venueId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (venueId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.venueId,
                                referencedTable:
                                    $$NightlifePricingTableReferences
                                        ._venueIdTable(db),
                                referencedColumn:
                                    $$NightlifePricingTableReferences
                                        ._venueIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$NightlifePricingTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $NightlifePricingTable,
      NightlifePricingData,
      $$NightlifePricingTableFilterComposer,
      $$NightlifePricingTableOrderingComposer,
      $$NightlifePricingTableAnnotationComposer,
      $$NightlifePricingTableCreateCompanionBuilder,
      $$NightlifePricingTableUpdateCompanionBuilder,
      (NightlifePricingData, $$NightlifePricingTableReferences),
      NightlifePricingData,
      PrefetchHooks Function({bool venueId})
    >;
typedef $$RoutesTableCreateCompanionBuilder =
    RoutesCompanion Function({
      required String id,
      required String areaId,
      required int createdAt,
      required double startLat,
      required double startLng,
      required int totalMinutes,
      required int budgetYen,
      required String mood,
      required int nightlifeEnabled,
      required String status,
      required String constraintsJson,
      Value<int> rowid,
    });
typedef $$RoutesTableUpdateCompanionBuilder =
    RoutesCompanion Function({
      Value<String> id,
      Value<String> areaId,
      Value<int> createdAt,
      Value<double> startLat,
      Value<double> startLng,
      Value<int> totalMinutes,
      Value<int> budgetYen,
      Value<String> mood,
      Value<int> nightlifeEnabled,
      Value<String> status,
      Value<String> constraintsJson,
      Value<int> rowid,
    });

final class $$RoutesTableReferences
    extends BaseReferences<_$AppDatabase, $RoutesTable, Route> {
  $$RoutesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $AreasTable _areaIdTable(_$AppDatabase db) =>
      db.areas.createAlias($_aliasNameGenerator(db.routes.areaId, db.areas.id));

  $$AreasTableProcessedTableManager get areaId {
    final $_column = $_itemColumn<String>('area_id')!;

    final manager = $$AreasTableTableManager(
      $_db,
      $_db.areas,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_areaIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$RouteStopsTable, List<RouteStop>>
  _routeStopsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.routeStops,
    aliasName: $_aliasNameGenerator(db.routes.id, db.routeStops.routeId),
  );

  $$RouteStopsTableProcessedTableManager get routeStopsRefs {
    final manager = $$RouteStopsTableTableManager(
      $_db,
      $_db.routeStops,
    ).filter((f) => f.routeId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_routeStopsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$EventQueueTable, List<EventQueueData>>
  _eventQueueRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.eventQueue,
    aliasName: $_aliasNameGenerator(db.routes.id, db.eventQueue.routeId),
  );

  $$EventQueueTableProcessedTableManager get eventQueueRefs {
    final manager = $$EventQueueTableTableManager(
      $_db,
      $_db.eventQueue,
    ).filter((f) => f.routeId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_eventQueueRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$RoutesTableFilterComposer
    extends Composer<_$AppDatabase, $RoutesTable> {
  $$RoutesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get startLat => $composableBuilder(
    column: $table.startLat,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get startLng => $composableBuilder(
    column: $table.startLng,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get totalMinutes => $composableBuilder(
    column: $table.totalMinutes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get budgetYen => $composableBuilder(
    column: $table.budgetYen,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get mood => $composableBuilder(
    column: $table.mood,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get nightlifeEnabled => $composableBuilder(
    column: $table.nightlifeEnabled,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get constraintsJson => $composableBuilder(
    column: $table.constraintsJson,
    builder: (column) => ColumnFilters(column),
  );

  $$AreasTableFilterComposer get areaId {
    final $$AreasTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.areaId,
      referencedTable: $db.areas,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AreasTableFilterComposer(
            $db: $db,
            $table: $db.areas,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> routeStopsRefs(
    Expression<bool> Function($$RouteStopsTableFilterComposer f) f,
  ) {
    final $$RouteStopsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.routeStops,
      getReferencedColumn: (t) => t.routeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RouteStopsTableFilterComposer(
            $db: $db,
            $table: $db.routeStops,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> eventQueueRefs(
    Expression<bool> Function($$EventQueueTableFilterComposer f) f,
  ) {
    final $$EventQueueTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.eventQueue,
      getReferencedColumn: (t) => t.routeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EventQueueTableFilterComposer(
            $db: $db,
            $table: $db.eventQueue,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$RoutesTableOrderingComposer
    extends Composer<_$AppDatabase, $RoutesTable> {
  $$RoutesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get startLat => $composableBuilder(
    column: $table.startLat,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get startLng => $composableBuilder(
    column: $table.startLng,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get totalMinutes => $composableBuilder(
    column: $table.totalMinutes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get budgetYen => $composableBuilder(
    column: $table.budgetYen,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get mood => $composableBuilder(
    column: $table.mood,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get nightlifeEnabled => $composableBuilder(
    column: $table.nightlifeEnabled,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get constraintsJson => $composableBuilder(
    column: $table.constraintsJson,
    builder: (column) => ColumnOrderings(column),
  );

  $$AreasTableOrderingComposer get areaId {
    final $$AreasTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.areaId,
      referencedTable: $db.areas,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AreasTableOrderingComposer(
            $db: $db,
            $table: $db.areas,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RoutesTableAnnotationComposer
    extends Composer<_$AppDatabase, $RoutesTable> {
  $$RoutesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<double> get startLat =>
      $composableBuilder(column: $table.startLat, builder: (column) => column);

  GeneratedColumn<double> get startLng =>
      $composableBuilder(column: $table.startLng, builder: (column) => column);

  GeneratedColumn<int> get totalMinutes => $composableBuilder(
    column: $table.totalMinutes,
    builder: (column) => column,
  );

  GeneratedColumn<int> get budgetYen =>
      $composableBuilder(column: $table.budgetYen, builder: (column) => column);

  GeneratedColumn<String> get mood =>
      $composableBuilder(column: $table.mood, builder: (column) => column);

  GeneratedColumn<int> get nightlifeEnabled => $composableBuilder(
    column: $table.nightlifeEnabled,
    builder: (column) => column,
  );

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<String> get constraintsJson => $composableBuilder(
    column: $table.constraintsJson,
    builder: (column) => column,
  );

  $$AreasTableAnnotationComposer get areaId {
    final $$AreasTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.areaId,
      referencedTable: $db.areas,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AreasTableAnnotationComposer(
            $db: $db,
            $table: $db.areas,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> routeStopsRefs<T extends Object>(
    Expression<T> Function($$RouteStopsTableAnnotationComposer a) f,
  ) {
    final $$RouteStopsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.routeStops,
      getReferencedColumn: (t) => t.routeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RouteStopsTableAnnotationComposer(
            $db: $db,
            $table: $db.routeStops,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> eventQueueRefs<T extends Object>(
    Expression<T> Function($$EventQueueTableAnnotationComposer a) f,
  ) {
    final $$EventQueueTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.eventQueue,
      getReferencedColumn: (t) => t.routeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EventQueueTableAnnotationComposer(
            $db: $db,
            $table: $db.eventQueue,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$RoutesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RoutesTable,
          Route,
          $$RoutesTableFilterComposer,
          $$RoutesTableOrderingComposer,
          $$RoutesTableAnnotationComposer,
          $$RoutesTableCreateCompanionBuilder,
          $$RoutesTableUpdateCompanionBuilder,
          (Route, $$RoutesTableReferences),
          Route,
          PrefetchHooks Function({
            bool areaId,
            bool routeStopsRefs,
            bool eventQueueRefs,
          })
        > {
  $$RoutesTableTableManager(_$AppDatabase db, $RoutesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RoutesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RoutesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RoutesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> areaId = const Value.absent(),
                Value<int> createdAt = const Value.absent(),
                Value<double> startLat = const Value.absent(),
                Value<double> startLng = const Value.absent(),
                Value<int> totalMinutes = const Value.absent(),
                Value<int> budgetYen = const Value.absent(),
                Value<String> mood = const Value.absent(),
                Value<int> nightlifeEnabled = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<String> constraintsJson = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => RoutesCompanion(
                id: id,
                areaId: areaId,
                createdAt: createdAt,
                startLat: startLat,
                startLng: startLng,
                totalMinutes: totalMinutes,
                budgetYen: budgetYen,
                mood: mood,
                nightlifeEnabled: nightlifeEnabled,
                status: status,
                constraintsJson: constraintsJson,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String areaId,
                required int createdAt,
                required double startLat,
                required double startLng,
                required int totalMinutes,
                required int budgetYen,
                required String mood,
                required int nightlifeEnabled,
                required String status,
                required String constraintsJson,
                Value<int> rowid = const Value.absent(),
              }) => RoutesCompanion.insert(
                id: id,
                areaId: areaId,
                createdAt: createdAt,
                startLat: startLat,
                startLng: startLng,
                totalMinutes: totalMinutes,
                budgetYen: budgetYen,
                mood: mood,
                nightlifeEnabled: nightlifeEnabled,
                status: status,
                constraintsJson: constraintsJson,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) =>
                    (e.readTable(table), $$RoutesTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                areaId = false,
                routeStopsRefs = false,
                eventQueueRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (routeStopsRefs) db.routeStops,
                    if (eventQueueRefs) db.eventQueue,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (areaId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.areaId,
                                    referencedTable: $$RoutesTableReferences
                                        ._areaIdTable(db),
                                    referencedColumn: $$RoutesTableReferences
                                        ._areaIdTable(db)
                                        .id,
                                  )
                                  as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (routeStopsRefs)
                        await $_getPrefetchedData<
                          Route,
                          $RoutesTable,
                          RouteStop
                        >(
                          currentTable: table,
                          referencedTable: $$RoutesTableReferences
                              ._routeStopsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$RoutesTableReferences(
                                db,
                                table,
                                p0,
                              ).routeStopsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.routeId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (eventQueueRefs)
                        await $_getPrefetchedData<
                          Route,
                          $RoutesTable,
                          EventQueueData
                        >(
                          currentTable: table,
                          referencedTable: $$RoutesTableReferences
                              ._eventQueueRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$RoutesTableReferences(
                                db,
                                table,
                                p0,
                              ).eventQueueRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.routeId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$RoutesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RoutesTable,
      Route,
      $$RoutesTableFilterComposer,
      $$RoutesTableOrderingComposer,
      $$RoutesTableAnnotationComposer,
      $$RoutesTableCreateCompanionBuilder,
      $$RoutesTableUpdateCompanionBuilder,
      (Route, $$RoutesTableReferences),
      Route,
      PrefetchHooks Function({
        bool areaId,
        bool routeStopsRefs,
        bool eventQueueRefs,
      })
    >;
typedef $$RouteStopsTableCreateCompanionBuilder =
    RouteStopsCompanion Function({
      required String id,
      required String routeId,
      required int stopOrder,
      required String venueId,
      required int stayMinutes,
      required int walkMinutesFromPrev,
      required int plannedArrivalAt,
      required int plannedDepartureAt,
      Value<int> rowid,
    });
typedef $$RouteStopsTableUpdateCompanionBuilder =
    RouteStopsCompanion Function({
      Value<String> id,
      Value<String> routeId,
      Value<int> stopOrder,
      Value<String> venueId,
      Value<int> stayMinutes,
      Value<int> walkMinutesFromPrev,
      Value<int> plannedArrivalAt,
      Value<int> plannedDepartureAt,
      Value<int> rowid,
    });

final class $$RouteStopsTableReferences
    extends BaseReferences<_$AppDatabase, $RouteStopsTable, RouteStop> {
  $$RouteStopsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $RoutesTable _routeIdTable(_$AppDatabase db) => db.routes.createAlias(
    $_aliasNameGenerator(db.routeStops.routeId, db.routes.id),
  );

  $$RoutesTableProcessedTableManager get routeId {
    final $_column = $_itemColumn<String>('route_id')!;

    final manager = $$RoutesTableTableManager(
      $_db,
      $_db.routes,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_routeIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $VenuesTable _venueIdTable(_$AppDatabase db) => db.venues.createAlias(
    $_aliasNameGenerator(db.routeStops.venueId, db.venues.id),
  );

  $$VenuesTableProcessedTableManager get venueId {
    final $_column = $_itemColumn<String>('venue_id')!;

    final manager = $$VenuesTableTableManager(
      $_db,
      $_db.venues,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_venueIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$RouteStopsTableFilterComposer
    extends Composer<_$AppDatabase, $RouteStopsTable> {
  $$RouteStopsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get stopOrder => $composableBuilder(
    column: $table.stopOrder,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get stayMinutes => $composableBuilder(
    column: $table.stayMinutes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get walkMinutesFromPrev => $composableBuilder(
    column: $table.walkMinutesFromPrev,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get plannedArrivalAt => $composableBuilder(
    column: $table.plannedArrivalAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get plannedDepartureAt => $composableBuilder(
    column: $table.plannedDepartureAt,
    builder: (column) => ColumnFilters(column),
  );

  $$RoutesTableFilterComposer get routeId {
    final $$RoutesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.routeId,
      referencedTable: $db.routes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RoutesTableFilterComposer(
            $db: $db,
            $table: $db.routes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$VenuesTableFilterComposer get venueId {
    final $$VenuesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.venueId,
      referencedTable: $db.venues,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VenuesTableFilterComposer(
            $db: $db,
            $table: $db.venues,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RouteStopsTableOrderingComposer
    extends Composer<_$AppDatabase, $RouteStopsTable> {
  $$RouteStopsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get stopOrder => $composableBuilder(
    column: $table.stopOrder,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get stayMinutes => $composableBuilder(
    column: $table.stayMinutes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get walkMinutesFromPrev => $composableBuilder(
    column: $table.walkMinutesFromPrev,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get plannedArrivalAt => $composableBuilder(
    column: $table.plannedArrivalAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get plannedDepartureAt => $composableBuilder(
    column: $table.plannedDepartureAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$RoutesTableOrderingComposer get routeId {
    final $$RoutesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.routeId,
      referencedTable: $db.routes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RoutesTableOrderingComposer(
            $db: $db,
            $table: $db.routes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$VenuesTableOrderingComposer get venueId {
    final $$VenuesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.venueId,
      referencedTable: $db.venues,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VenuesTableOrderingComposer(
            $db: $db,
            $table: $db.venues,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RouteStopsTableAnnotationComposer
    extends Composer<_$AppDatabase, $RouteStopsTable> {
  $$RouteStopsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get stopOrder =>
      $composableBuilder(column: $table.stopOrder, builder: (column) => column);

  GeneratedColumn<int> get stayMinutes => $composableBuilder(
    column: $table.stayMinutes,
    builder: (column) => column,
  );

  GeneratedColumn<int> get walkMinutesFromPrev => $composableBuilder(
    column: $table.walkMinutesFromPrev,
    builder: (column) => column,
  );

  GeneratedColumn<int> get plannedArrivalAt => $composableBuilder(
    column: $table.plannedArrivalAt,
    builder: (column) => column,
  );

  GeneratedColumn<int> get plannedDepartureAt => $composableBuilder(
    column: $table.plannedDepartureAt,
    builder: (column) => column,
  );

  $$RoutesTableAnnotationComposer get routeId {
    final $$RoutesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.routeId,
      referencedTable: $db.routes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RoutesTableAnnotationComposer(
            $db: $db,
            $table: $db.routes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$VenuesTableAnnotationComposer get venueId {
    final $$VenuesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.venueId,
      referencedTable: $db.venues,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VenuesTableAnnotationComposer(
            $db: $db,
            $table: $db.venues,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RouteStopsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RouteStopsTable,
          RouteStop,
          $$RouteStopsTableFilterComposer,
          $$RouteStopsTableOrderingComposer,
          $$RouteStopsTableAnnotationComposer,
          $$RouteStopsTableCreateCompanionBuilder,
          $$RouteStopsTableUpdateCompanionBuilder,
          (RouteStop, $$RouteStopsTableReferences),
          RouteStop,
          PrefetchHooks Function({bool routeId, bool venueId})
        > {
  $$RouteStopsTableTableManager(_$AppDatabase db, $RouteStopsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RouteStopsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RouteStopsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RouteStopsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> routeId = const Value.absent(),
                Value<int> stopOrder = const Value.absent(),
                Value<String> venueId = const Value.absent(),
                Value<int> stayMinutes = const Value.absent(),
                Value<int> walkMinutesFromPrev = const Value.absent(),
                Value<int> plannedArrivalAt = const Value.absent(),
                Value<int> plannedDepartureAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => RouteStopsCompanion(
                id: id,
                routeId: routeId,
                stopOrder: stopOrder,
                venueId: venueId,
                stayMinutes: stayMinutes,
                walkMinutesFromPrev: walkMinutesFromPrev,
                plannedArrivalAt: plannedArrivalAt,
                plannedDepartureAt: plannedDepartureAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String routeId,
                required int stopOrder,
                required String venueId,
                required int stayMinutes,
                required int walkMinutesFromPrev,
                required int plannedArrivalAt,
                required int plannedDepartureAt,
                Value<int> rowid = const Value.absent(),
              }) => RouteStopsCompanion.insert(
                id: id,
                routeId: routeId,
                stopOrder: stopOrder,
                venueId: venueId,
                stayMinutes: stayMinutes,
                walkMinutesFromPrev: walkMinutesFromPrev,
                plannedArrivalAt: plannedArrivalAt,
                plannedDepartureAt: plannedDepartureAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$RouteStopsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({routeId = false, venueId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (routeId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.routeId,
                                referencedTable: $$RouteStopsTableReferences
                                    ._routeIdTable(db),
                                referencedColumn: $$RouteStopsTableReferences
                                    ._routeIdTable(db)
                                    .id,
                              )
                              as T;
                    }
                    if (venueId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.venueId,
                                referencedTable: $$RouteStopsTableReferences
                                    ._venueIdTable(db),
                                referencedColumn: $$RouteStopsTableReferences
                                    ._venueIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$RouteStopsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RouteStopsTable,
      RouteStop,
      $$RouteStopsTableFilterComposer,
      $$RouteStopsTableOrderingComposer,
      $$RouteStopsTableAnnotationComposer,
      $$RouteStopsTableCreateCompanionBuilder,
      $$RouteStopsTableUpdateCompanionBuilder,
      (RouteStop, $$RouteStopsTableReferences),
      RouteStop,
      PrefetchHooks Function({bool routeId, bool venueId})
    >;
typedef $$FavoritesTableCreateCompanionBuilder =
    FavoritesCompanion Function({
      required String venueId,
      required int createdAt,
      Value<int> rowid,
    });
typedef $$FavoritesTableUpdateCompanionBuilder =
    FavoritesCompanion Function({
      Value<String> venueId,
      Value<int> createdAt,
      Value<int> rowid,
    });

final class $$FavoritesTableReferences
    extends BaseReferences<_$AppDatabase, $FavoritesTable, Favorite> {
  $$FavoritesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $VenuesTable _venueIdTable(_$AppDatabase db) => db.venues.createAlias(
    $_aliasNameGenerator(db.favorites.venueId, db.venues.id),
  );

  $$VenuesTableProcessedTableManager get venueId {
    final $_column = $_itemColumn<String>('venue_id')!;

    final manager = $$VenuesTableTableManager(
      $_db,
      $_db.venues,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_venueIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$FavoritesTableFilterComposer
    extends Composer<_$AppDatabase, $FavoritesTable> {
  $$FavoritesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$VenuesTableFilterComposer get venueId {
    final $$VenuesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.venueId,
      referencedTable: $db.venues,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VenuesTableFilterComposer(
            $db: $db,
            $table: $db.venues,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FavoritesTableOrderingComposer
    extends Composer<_$AppDatabase, $FavoritesTable> {
  $$FavoritesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$VenuesTableOrderingComposer get venueId {
    final $$VenuesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.venueId,
      referencedTable: $db.venues,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VenuesTableOrderingComposer(
            $db: $db,
            $table: $db.venues,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FavoritesTableAnnotationComposer
    extends Composer<_$AppDatabase, $FavoritesTable> {
  $$FavoritesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$VenuesTableAnnotationComposer get venueId {
    final $$VenuesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.venueId,
      referencedTable: $db.venues,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VenuesTableAnnotationComposer(
            $db: $db,
            $table: $db.venues,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FavoritesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $FavoritesTable,
          Favorite,
          $$FavoritesTableFilterComposer,
          $$FavoritesTableOrderingComposer,
          $$FavoritesTableAnnotationComposer,
          $$FavoritesTableCreateCompanionBuilder,
          $$FavoritesTableUpdateCompanionBuilder,
          (Favorite, $$FavoritesTableReferences),
          Favorite,
          PrefetchHooks Function({bool venueId})
        > {
  $$FavoritesTableTableManager(_$AppDatabase db, $FavoritesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FavoritesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FavoritesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FavoritesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> venueId = const Value.absent(),
                Value<int> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FavoritesCompanion(
                venueId: venueId,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String venueId,
                required int createdAt,
                Value<int> rowid = const Value.absent(),
              }) => FavoritesCompanion.insert(
                venueId: venueId,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$FavoritesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({venueId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (venueId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.venueId,
                                referencedTable: $$FavoritesTableReferences
                                    ._venueIdTable(db),
                                referencedColumn: $$FavoritesTableReferences
                                    ._venueIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$FavoritesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $FavoritesTable,
      Favorite,
      $$FavoritesTableFilterComposer,
      $$FavoritesTableOrderingComposer,
      $$FavoritesTableAnnotationComposer,
      $$FavoritesTableCreateCompanionBuilder,
      $$FavoritesTableUpdateCompanionBuilder,
      (Favorite, $$FavoritesTableReferences),
      Favorite,
      PrefetchHooks Function({bool venueId})
    >;
typedef $$EventQueueTableCreateCompanionBuilder =
    EventQueueCompanion Function({
      required String id,
      required int createdAt,
      required String eventType,
      Value<String?> venueId,
      Value<String?> routeId,
      required String payloadJson,
      required int synced,
      Value<int> rowid,
    });
typedef $$EventQueueTableUpdateCompanionBuilder =
    EventQueueCompanion Function({
      Value<String> id,
      Value<int> createdAt,
      Value<String> eventType,
      Value<String?> venueId,
      Value<String?> routeId,
      Value<String> payloadJson,
      Value<int> synced,
      Value<int> rowid,
    });

final class $$EventQueueTableReferences
    extends BaseReferences<_$AppDatabase, $EventQueueTable, EventQueueData> {
  $$EventQueueTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $VenuesTable _venueIdTable(_$AppDatabase db) => db.venues.createAlias(
    $_aliasNameGenerator(db.eventQueue.venueId, db.venues.id),
  );

  $$VenuesTableProcessedTableManager? get venueId {
    final $_column = $_itemColumn<String>('venue_id');
    if ($_column == null) return null;
    final manager = $$VenuesTableTableManager(
      $_db,
      $_db.venues,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_venueIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $RoutesTable _routeIdTable(_$AppDatabase db) => db.routes.createAlias(
    $_aliasNameGenerator(db.eventQueue.routeId, db.routes.id),
  );

  $$RoutesTableProcessedTableManager? get routeId {
    final $_column = $_itemColumn<String>('route_id');
    if ($_column == null) return null;
    final manager = $$RoutesTableTableManager(
      $_db,
      $_db.routes,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_routeIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$EventQueueTableFilterComposer
    extends Composer<_$AppDatabase, $EventQueueTable> {
  $$EventQueueTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get eventType => $composableBuilder(
    column: $table.eventType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get payloadJson => $composableBuilder(
    column: $table.payloadJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get synced => $composableBuilder(
    column: $table.synced,
    builder: (column) => ColumnFilters(column),
  );

  $$VenuesTableFilterComposer get venueId {
    final $$VenuesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.venueId,
      referencedTable: $db.venues,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VenuesTableFilterComposer(
            $db: $db,
            $table: $db.venues,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$RoutesTableFilterComposer get routeId {
    final $$RoutesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.routeId,
      referencedTable: $db.routes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RoutesTableFilterComposer(
            $db: $db,
            $table: $db.routes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$EventQueueTableOrderingComposer
    extends Composer<_$AppDatabase, $EventQueueTable> {
  $$EventQueueTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get eventType => $composableBuilder(
    column: $table.eventType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get payloadJson => $composableBuilder(
    column: $table.payloadJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get synced => $composableBuilder(
    column: $table.synced,
    builder: (column) => ColumnOrderings(column),
  );

  $$VenuesTableOrderingComposer get venueId {
    final $$VenuesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.venueId,
      referencedTable: $db.venues,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VenuesTableOrderingComposer(
            $db: $db,
            $table: $db.venues,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$RoutesTableOrderingComposer get routeId {
    final $$RoutesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.routeId,
      referencedTable: $db.routes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RoutesTableOrderingComposer(
            $db: $db,
            $table: $db.routes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$EventQueueTableAnnotationComposer
    extends Composer<_$AppDatabase, $EventQueueTable> {
  $$EventQueueTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<String> get eventType =>
      $composableBuilder(column: $table.eventType, builder: (column) => column);

  GeneratedColumn<String> get payloadJson => $composableBuilder(
    column: $table.payloadJson,
    builder: (column) => column,
  );

  GeneratedColumn<int> get synced =>
      $composableBuilder(column: $table.synced, builder: (column) => column);

  $$VenuesTableAnnotationComposer get venueId {
    final $$VenuesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.venueId,
      referencedTable: $db.venues,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VenuesTableAnnotationComposer(
            $db: $db,
            $table: $db.venues,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$RoutesTableAnnotationComposer get routeId {
    final $$RoutesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.routeId,
      referencedTable: $db.routes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RoutesTableAnnotationComposer(
            $db: $db,
            $table: $db.routes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$EventQueueTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $EventQueueTable,
          EventQueueData,
          $$EventQueueTableFilterComposer,
          $$EventQueueTableOrderingComposer,
          $$EventQueueTableAnnotationComposer,
          $$EventQueueTableCreateCompanionBuilder,
          $$EventQueueTableUpdateCompanionBuilder,
          (EventQueueData, $$EventQueueTableReferences),
          EventQueueData,
          PrefetchHooks Function({bool venueId, bool routeId})
        > {
  $$EventQueueTableTableManager(_$AppDatabase db, $EventQueueTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$EventQueueTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$EventQueueTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$EventQueueTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<int> createdAt = const Value.absent(),
                Value<String> eventType = const Value.absent(),
                Value<String?> venueId = const Value.absent(),
                Value<String?> routeId = const Value.absent(),
                Value<String> payloadJson = const Value.absent(),
                Value<int> synced = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => EventQueueCompanion(
                id: id,
                createdAt: createdAt,
                eventType: eventType,
                venueId: venueId,
                routeId: routeId,
                payloadJson: payloadJson,
                synced: synced,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required int createdAt,
                required String eventType,
                Value<String?> venueId = const Value.absent(),
                Value<String?> routeId = const Value.absent(),
                required String payloadJson,
                required int synced,
                Value<int> rowid = const Value.absent(),
              }) => EventQueueCompanion.insert(
                id: id,
                createdAt: createdAt,
                eventType: eventType,
                venueId: venueId,
                routeId: routeId,
                payloadJson: payloadJson,
                synced: synced,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$EventQueueTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({venueId = false, routeId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (venueId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.venueId,
                                referencedTable: $$EventQueueTableReferences
                                    ._venueIdTable(db),
                                referencedColumn: $$EventQueueTableReferences
                                    ._venueIdTable(db)
                                    .id,
                              )
                              as T;
                    }
                    if (routeId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.routeId,
                                referencedTable: $$EventQueueTableReferences
                                    ._routeIdTable(db),
                                referencedColumn: $$EventQueueTableReferences
                                    ._routeIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$EventQueueTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $EventQueueTable,
      EventQueueData,
      $$EventQueueTableFilterComposer,
      $$EventQueueTableOrderingComposer,
      $$EventQueueTableAnnotationComposer,
      $$EventQueueTableCreateCompanionBuilder,
      $$EventQueueTableUpdateCompanionBuilder,
      (EventQueueData, $$EventQueueTableReferences),
      EventQueueData,
      PrefetchHooks Function({bool venueId, bool routeId})
    >;
typedef $$UserPreferencesTableCreateCompanionBuilder =
    UserPreferencesCompanion Function({
      required String key,
      required String value,
      required int updatedAt,
      Value<int> rowid,
    });
typedef $$UserPreferencesTableUpdateCompanionBuilder =
    UserPreferencesCompanion Function({
      Value<String> key,
      Value<String> value,
      Value<int> updatedAt,
      Value<int> rowid,
    });

class $$UserPreferencesTableFilterComposer
    extends Composer<_$AppDatabase, $UserPreferencesTable> {
  $$UserPreferencesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$UserPreferencesTableOrderingComposer
    extends Composer<_$AppDatabase, $UserPreferencesTable> {
  $$UserPreferencesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$UserPreferencesTableAnnotationComposer
    extends Composer<_$AppDatabase, $UserPreferencesTable> {
  $$UserPreferencesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get key =>
      $composableBuilder(column: $table.key, builder: (column) => column);

  GeneratedColumn<String> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);

  GeneratedColumn<int> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$UserPreferencesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $UserPreferencesTable,
          UserPreference,
          $$UserPreferencesTableFilterComposer,
          $$UserPreferencesTableOrderingComposer,
          $$UserPreferencesTableAnnotationComposer,
          $$UserPreferencesTableCreateCompanionBuilder,
          $$UserPreferencesTableUpdateCompanionBuilder,
          (
            UserPreference,
            BaseReferences<
              _$AppDatabase,
              $UserPreferencesTable,
              UserPreference
            >,
          ),
          UserPreference,
          PrefetchHooks Function()
        > {
  $$UserPreferencesTableTableManager(
    _$AppDatabase db,
    $UserPreferencesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UserPreferencesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UserPreferencesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UserPreferencesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> key = const Value.absent(),
                Value<String> value = const Value.absent(),
                Value<int> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => UserPreferencesCompanion(
                key: key,
                value: value,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String key,
                required String value,
                required int updatedAt,
                Value<int> rowid = const Value.absent(),
              }) => UserPreferencesCompanion.insert(
                key: key,
                value: value,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$UserPreferencesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $UserPreferencesTable,
      UserPreference,
      $$UserPreferencesTableFilterComposer,
      $$UserPreferencesTableOrderingComposer,
      $$UserPreferencesTableAnnotationComposer,
      $$UserPreferencesTableCreateCompanionBuilder,
      $$UserPreferencesTableUpdateCompanionBuilder,
      (
        UserPreference,
        BaseReferences<_$AppDatabase, $UserPreferencesTable, UserPreference>,
      ),
      UserPreference,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$AreasTableTableManager get areas =>
      $$AreasTableTableManager(_db, _db.areas);
  $$CategoriesTableTableManager get categories =>
      $$CategoriesTableTableManager(_db, _db.categories);
  $$VenuesTableTableManager get venues =>
      $$VenuesTableTableManager(_db, _db.venues);
  $$VenueCategoriesTableTableManager get venueCategories =>
      $$VenueCategoriesTableTableManager(_db, _db.venueCategories);
  $$OpeningHoursTableTableManager get openingHours =>
      $$OpeningHoursTableTableManager(_db, _db.openingHours);
  $$HappyHoursTableTableManager get happyHours =>
      $$HappyHoursTableTableManager(_db, _db.happyHours);
  $$OffersTableTableManager get offers =>
      $$OffersTableTableManager(_db, _db.offers);
  $$NightlifePricingTableTableManager get nightlifePricing =>
      $$NightlifePricingTableTableManager(_db, _db.nightlifePricing);
  $$RoutesTableTableManager get routes =>
      $$RoutesTableTableManager(_db, _db.routes);
  $$RouteStopsTableTableManager get routeStops =>
      $$RouteStopsTableTableManager(_db, _db.routeStops);
  $$FavoritesTableTableManager get favorites =>
      $$FavoritesTableTableManager(_db, _db.favorites);
  $$EventQueueTableTableManager get eventQueue =>
      $$EventQueueTableTableManager(_db, _db.eventQueue);
  $$UserPreferencesTableTableManager get userPreferences =>
      $$UserPreferencesTableTableManager(_db, _db.userPreferences);
}
