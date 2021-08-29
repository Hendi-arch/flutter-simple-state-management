import 'package:flutter/foundation.dart';
import 'package:movie_app_test/app/app_locator.dart';
import 'package:movie_app_test/app/app_router.gr.dart';
import 'package:movie_app_test/core/constant/enums.dart';
import 'package:movie_app_test/core/models/movie_model.dart';

class MovieViewModel with ChangeNotifier {
  static final _appRouter = locator<AppRouter>();

  List<MovieModel> movies = [];

  void addMovie(MovieModel data) {
    movies.add(data.copyWith(id: movies.length.toString()));
    _appRouter.pop();
    _setState();
  }

  void updateMovie(MovieModel data) {
    movies[movies.indexWhere((element) => element.id == data.id)] = data;
    _appRouter.pop();
    _setState();
  }

  void deleteMovie(String id) {
    movies.removeWhere((element) => element.id == id);
    _appRouter.pop();
    _setState();
  }

  void onAddNewMovie() {
    _appRouter.push(MovieDetailRoute(appState: AppState.add));
  }

  void onTapMovie(MovieModel data) {
    _appRouter.push(MovieDetailRoute(appState: AppState.update, data: data));
  }

  void _setState() => notifyListeners();
}
