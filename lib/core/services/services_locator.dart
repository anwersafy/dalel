import 'package:get_it/get_it.dart';

import '../database/cache/cache_helper.dart';

final getIt = GetIt.instance;
void setUpServicesLocator(){
  getIt.registerSingleton<CacheHelper>(CacheHelper());
}