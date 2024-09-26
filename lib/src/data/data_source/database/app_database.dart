import 'package:drift/drift.dart';

import '../../../common/utility/datatbase_opener.dart';

part '../../../../generated/src/data/data_source/database/app_database.g.dart';

@DriftDatabase(
  tables: [],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase({
    required String databaseName,
  }) : super(
          AppDatabaseOpener.openDatabase(
            name: databaseName,
          ),
        );

  @override
  int get schemaVersion => 1;
}
