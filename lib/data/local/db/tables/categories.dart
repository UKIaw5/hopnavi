import 'package:drift/drift.dart';

class Categories extends Table {
  TextColumn get id => text()();
  TextColumn get labelJa => text()();
  TextColumn get labelEn => text()();
  IntColumn get isNightlife => integer()();
  IntColumn get sortOrder => integer()();
  IntColumn get isActive => integer()();

  @override
  Set<Column> get primaryKey => {id};
}
