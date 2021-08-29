import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:movie_app_test/app/app_locator.dart';
import 'package:movie_app_test/app/app_router.gr.dart';
import 'package:movie_app_test/core/viewmodels/movie/movie_viewmodel.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  final _appRouter = locator<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MovieViewModel>(
      create: (_) => MovieViewModel(),
      child: MaterialApp.router(
        routerDelegate: AutoRouterDelegate(_appRouter),
        routeInformationParser: _appRouter.defaultRouteParser(),
        title: 'Movies App Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      ),
    );
  }
}
