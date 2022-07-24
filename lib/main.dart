import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tyfon/app/inject_dependencies.dart';

import 'app/my_app.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light));
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp().then((value) {
    injectDependencies();
    runApp(const MyApp());
  });
}
