import 'package:drift/drift.dart';

class Areas extends Table {
  TextColumn get id => text()();
  TextColumn get nameJa => text()();
  TextColumn get nameEn => text()();
  RealColumn get centerLat => real()();
  RealColumn get centerLng => real()();
  RealColumn get defaultZoom => real()();
  IntColumn get isActive => integer()();
  IntColumn get createdAt => integer()();
  IntColumn get updatedAt => integer()();

  @override
  Set<Column> get primaryKey => {id};
}
