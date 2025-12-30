import 'package:drift/drift.dart';

import 'routes.dart';
import 'venues.dart';

class RouteStops extends Table {
  TextColumn get id => text()();
  TextColumn get routeId => text().references(Routes, #id)();
  IntColumn get stopOrder => integer()();
  TextColumn get venueId => text().references(Venues, #id)();
  IntColumn get stayMinutes => integer()();
  IntColumn get walkMinutesFromPrev => integer()();
  IntColumn get plannedArrivalAt => integer()();
  IntColumn get plannedDepartureAt => integer()();

  @override
  Set<Column> get primaryKey => {id};
}
