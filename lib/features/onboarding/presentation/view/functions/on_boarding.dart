import '../../../../../core/database/cache/cache_helper.dart';
import '../../../../../core/services/services_locator.dart';

void OnBoardingVisited() {
  getIt<CacheHelper>().saveData(key: 'isOnBoardingVisited', value: true);
}