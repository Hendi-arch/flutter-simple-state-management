import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:get/get.dart';
import 'package:movie_app_test/app/app_router.gr.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _appRouter = Get.put(AppRouter());

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
