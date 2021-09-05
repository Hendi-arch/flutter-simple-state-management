import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:movie_app_test/app/app_locator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class App extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef reference) {
    final _appRouter = reference.watch(routeManager);

    return MaterialApp.router(
      routerDelegate: AutoRouterDelegate(_appRouter),
      routeInformationParser: _appRouter.defaultRouteParser(),
      title: 'Movies App Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
