import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'tables/areas.dart';
import 'tables/categories.dart';
import 'tables/event_queue.dart';
import 'tables/favorites.dart';
import 'tables/happy_hours.dart';
import 'tables/nightlife_pricing.dart';
import 'tables/offers.dart';
import 'tables/opening_hours.dart';
import 'tables/route_stops.dart';
import 'tables/routes.dart';
import 'tables/user_preferences.dart';
import 'tables/venue_categories.dart';
import 'tables/venues.dart';

part 'app_database.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dir = await getApplicationDocumentsDirectory();
    final dbFile = File(p.join(dir.path, 'hopnavi.sqlite'));
    return NativeDatabase.createInBackground(dbFile);
  });
}

@DriftDatabase(
  tables: [
    Areas,
    Categories,
    Venues,
    VenueCategories,
    OpeningHours,
    HappyHours,
    Offers,
    NightlifePricing,
    Routes,
    RouteStops,
    Favorites,
    EventQueue,
    UserPreferences,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}
