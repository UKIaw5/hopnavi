import 'package:drift/drift.dart';

import 'categories.dart';
import 'venues.dart';

class VenueCategories extends Table {
  TextColumn get venueId => text().references(Venues, #id)();
  TextColumn get categoryId => text().references(Categories, #id)();

  @override
  Set<Column> get primaryKey => {venueId, categoryId};
}
