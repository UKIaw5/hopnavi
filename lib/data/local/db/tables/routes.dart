import 'package:drift/drift.dart';

import 'areas.dart';

class Routes extends Table {
  TextColumn get id => text()();
  TextColumn get areaId => text().references(Areas, #id)();
  IntColumn get createdAt => integer()();
  RealColumn get startLat => real()();
  RealColumn get startLng => real()();
  IntColumn get totalMinutes => integer()();
  IntColumn get budgetYen => integer()();
  TextColumn get mood => text()();
  IntColumn get nightlifeEnabled => integer()();
  TextColumn get status => text()();
  TextColumn get constraintsJson => text()();

  @override
  Set<Column> get primaryKey => {id};
}
