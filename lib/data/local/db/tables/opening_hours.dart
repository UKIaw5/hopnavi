import 'package:drift/drift.dart';

import 'venues.dart';

class OpeningHours extends Table {
  TextColumn get id => text()();
  TextColumn get venueId => text().references(Venues, #id)();
  IntColumn get dayOfWeek => integer()();
  TextColumn get openTime => text()();
  TextColumn get closeTime => text()();
  IntColumn get crossesMidnight => integer()();
  TextColumn get noteJa => text()();
  TextColumn get noteEn => text()();
  IntColumn get isActive => integer()();

  @override
  Set<Column> get primaryKey => {id};
}
