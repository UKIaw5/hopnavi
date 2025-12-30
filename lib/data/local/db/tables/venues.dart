import 'package:drift/drift.dart';

import 'areas.dart';

class Venues extends Table {
  TextColumn get id => text()();
  TextColumn get areaId => text().references(Areas, #id)();
  TextColumn get nameJa => text()();
  TextColumn get nameEn => text()();
  RealColumn get lat => real()();
  RealColumn get lng => real()();
  TextColumn get addressJa => text()();
  TextColumn get addressEn => text()();
  TextColumn get phone => text()();
  TextColumn get websiteUrl => text()();
  TextColumn get notesJa => text()();
  TextColumn get notesEn => text()();
  TextColumn get seatingType => text()();
  TextColumn get smokingPolicy => text()();
  TextColumn get paymentPolicy => text()();
  IntColumn get coverChargeYen => integer()();
  TextColumn get otoshi => text()();
  TextColumn get englishMenu => text()();
  IntColumn get lastVerifiedAt => integer()();
  TextColumn get verifiedMethod => text()();
  IntColumn get isActive => integer()();
  IntColumn get createdAt => integer()();
  IntColumn get updatedAt => integer()();

  @override
  Set<Column> get primaryKey => {id};
}
