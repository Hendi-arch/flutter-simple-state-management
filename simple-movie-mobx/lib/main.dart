import 'package:movie_app_test/app/app.dart';
import 'package:flutter/material.dart' show runApp;
import 'package:movie_app_test/app/app_locator.dart';

void main() {
  setupLocator();
  runApp(App());
}
