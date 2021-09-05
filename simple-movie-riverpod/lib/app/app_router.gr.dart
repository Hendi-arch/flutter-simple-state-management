// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;
import 'package:movie_app_test/core/constant/enums.dart' as _i5;
import 'package:movie_app_test/core/models/movie_model.dart' as _i6;
import 'package:movie_app_test/views/inside/movie/content/movie_detail.dart'
    as _i4;
import 'package:movie_app_test/views/inside/movie/movie_view.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    MovieViewRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.MovieView();
        }),
    MovieDetailRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<MovieDetailRouteArgs>();
          return _i4.MovieDetail(
              key: args.key, appState: args.appState, data: args.data);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(MovieViewRoute.name, path: '/'),
        _i1.RouteConfig(MovieDetailRoute.name, path: 'movie_detail')
      ];
}

class MovieViewRoute extends _i1.PageRouteInfo {
  const MovieViewRoute() : super(name, path: '/');

  static const String name = 'MovieViewRoute';
}

class MovieDetailRoute extends _i1.PageRouteInfo<MovieDetailRouteArgs> {
  MovieDetailRoute(
      {_i2.Key? key, required _i5.AppState appState, _i6.MovieModel? data})
      : super(name,
            path: 'movie_detail',
            args:
                MovieDetailRouteArgs(key: key, appState: appState, data: data));

  static const String name = 'MovieDetailRoute';
}

class MovieDetailRouteArgs {
  const MovieDetailRouteArgs({this.key, required this.appState, this.data});

  final _i2.Key? key;

  final _i5.AppState appState;

  final _i6.MovieModel? data;
}
