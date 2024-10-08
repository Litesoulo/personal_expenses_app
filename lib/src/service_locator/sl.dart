import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../common/config/router/app_router.dart';
import '../data/data_source/database/app_database.dart';
import '../data/data_source/shared_preferences/shared_preferences_helper.dart';

part 'src/common.dart';
part 'src/data_layer.dart';
part 'src/domain_layer.dart';
part 'src/presentation_layer.dart';

final sl = GetIt.instance;

Future<void> initServiceLocator() async {
  await _initCommon();
  await _initDataLayer();
  await _initDomainLayer();
  await _initPresentationLayer();
}
