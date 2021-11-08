// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:movie_app_test/core/constant/enums.dart' as _i5;
import 'package:movie_app_test/core/models/movie_model.dart' as _i6;
import 'package:movie_app_test/views/inside/movie/content/movie_detail.dart'
    as _i2;
import 'package:movie_app_test/views/inside/movie/movie_view.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    MovieViewRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.MovieView());
    },
    MovieDetailRoute.name: (routeData) {
      final args = routeData.argsAs<MovieDetailRouteArgs>();
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i2.MovieDetail(
              key: args.key, appState: args.appState, data: args.data));
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(MovieViewRoute.name, path: '/'),
        _i3.RouteConfig(MovieDetailRoute.name, path: 'movie_detail')
      ];
}

/// generated route for [_i1.MovieView]
class MovieViewRoute extends _i3.PageRouteInfo<void> {
  const MovieViewRoute() : super(name, path: '/');

  static const String name = 'MovieViewRoute';
}

/// generated route for [_i2.MovieDetail]
class MovieDetailRoute extends _i3.PageRouteInfo<MovieDetailRouteArgs> {
  MovieDetailRoute(
      {_i4.Key? key, required _i5.AppState appState, _i6.MovieModel? data})
      : super(name,
            path: 'movie_detail',
            args:
                MovieDetailRouteArgs(key: key, appState: appState, data: data));

  static const String name = 'MovieDetailRoute';
}

class MovieDetailRouteArgs {
  const MovieDetailRouteArgs({this.key, required this.appState, this.data});

  final _i4.Key? key;

  final _i5.AppState appState;

  final _i6.MovieModel? data;
}
