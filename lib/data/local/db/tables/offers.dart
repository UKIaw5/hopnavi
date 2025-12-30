import 'package:drift/drift.dart';

import 'venues.dart';

class Offers extends Table {
  TextColumn get id => text()();
  TextColumn get venueId => text().references(Venues, #id)();
  TextColumn get type => text()();
  TextColumn get titleJa => text()();
  TextColumn get titleEn => text()();
  TextColumn get conditionJa => text()();
  TextColumn get conditionEn => text()();
  TextColumn get detailsJa => text()();
  TextColumn get detailsEn => text()();
  IntColumn get validFrom => integer()();
  IntColumn get validTo => integer()();
  IntColumn get isActive => integer()();
  IntColumn get lastVerifiedAt => integer()();
  TextColumn get redeemMode => text()();
  TextColumn get redeemHintJa => text()();
  TextColumn get redeemHintEn => text()();

  @override
  Set<Column> get primaryKey => {id};
}
