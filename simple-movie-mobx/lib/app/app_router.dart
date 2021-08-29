import 'package:auto_route/annotations.dart';

// paths
import 'package:movie_app_test/app/paths.dart';
import 'package:movie_app_test/views/inside/movie/content/movie_detail.dart';

// views
import 'package:movie_app_test/views/inside/movie/movie_view.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(path: movie, initial: true, page: MovieView),
    AutoRoute(path: movieDetail, page: MovieDetail),
  ],
)
class $AppRouter {}
