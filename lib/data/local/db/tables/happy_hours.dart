import 'package:drift/drift.dart';

import 'venues.dart';

class HappyHours extends Table {
  TextColumn get id => text()();
  TextColumn get venueId => text().references(Venues, #id)();
  IntColumn get dayOfWeek => integer()();
  TextColumn get startTime => text()();
  TextColumn get endTime => text()();
  TextColumn get dealJa => text()();
  TextColumn get dealEn => text()();
  TextColumn get conditionsJa => text()();
  TextColumn get conditionsEn => text()();
  IntColumn get lastVerifiedAt => integer()();
  TextColumn get verifiedMethod => text()();
  IntColumn get isActive => integer()();

  @override
  Set<Column> get primaryKey => {id};
}
