import 'package:drift/drift.dart';

import 'routes.dart';
import 'venues.dart';

class EventQueue extends Table {
  TextColumn get id => text()();
  IntColumn get createdAt => integer()();
  TextColumn get eventType => text()();
  TextColumn get venueId => text().nullable().references(Venues, #id)();
  TextColumn get routeId => text().nullable().references(Routes, #id)();
  TextColumn get payloadJson => text()();
  IntColumn get synced => integer()();

  @override
  Set<Column> get primaryKey => {id};
}
