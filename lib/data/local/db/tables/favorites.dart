import 'package:drift/drift.dart';

import 'venues.dart';

class Favorites extends Table {
  TextColumn get venueId => text().references(Venues, #id)();
  IntColumn get createdAt => integer()();

  @override
  Set<Column> get primaryKey => {venueId};
}
