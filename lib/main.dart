import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yaaseen/app.dart';
import 'package:yaaseen/hive_helper/hive_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  await HiveService.init();

  runApp(const MyApp());

  // await NotificationService().init();

  AppPref.setCounter();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark),
  );
}


// flutter packages pub run build_runner build  --delete-conflicting-outputs