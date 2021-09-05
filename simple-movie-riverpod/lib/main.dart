import 'package:movie_app_test/app/app.dart';
import 'package:flutter/material.dart' show runApp;
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: App()));
}
