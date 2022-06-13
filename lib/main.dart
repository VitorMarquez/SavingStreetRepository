import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:savingstreet/pages/start/SplashStart.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp]);
  runApp(MaterialApp(
    home: SplashStart(),
    debugShowCheckedModeBanner: false,
  ));
}

