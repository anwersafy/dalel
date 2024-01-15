import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'app/dalel.dart';
import 'core/functions/check_state_changes.dart';
import 'core/services/services_locator.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  setUpServicesLocator();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
await  getIt<CacheHelper>().init();
  checkStateChange();
  runApp(const Dalel());
}


