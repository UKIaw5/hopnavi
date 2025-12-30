import 'package:drift/drift.dart';

import 'venues.dart';

class NightlifePricing extends Table {
  TextColumn get venueId => text().references(Venues, #id)();
  IntColumn get firstSetMinutes => integer()();
  IntColumn get firstSetPriceYen => integer()();
  IntColumn get castDrinkPriceYen => integer()();
  TextColumn get additionalFeesNoteJa => text()();
  TextColumn get additionalFeesNoteEn => text()();
  IntColumn get lastVerifiedAt => integer()();
  TextColumn get verifiedMethod => text()();

  @override
  Set<Column> get primaryKey => {venueId};
}
