import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app_test/app/app_locator.dart';
import 'package:movie_app_test/app/app_router.gr.dart';
import 'package:movie_app_test/core/constant/enums.dart';
import 'package:movie_app_test/core/models/movie_model.dart';

// global viewModel that can accessed from anywhere
final movieViewModel = ChangeNotifierProvider(
  (reference) => _MovieViewModel(reader: reference.read),
);

// private viewModel
class _MovieViewModel with ChangeNotifier {
  final Reader reader;

  _MovieViewModel({required this.reader});

  List<MovieModel> movies = [];

  void addMovie(MovieModel data) {
    movies.add(data.copyWith(id: movies.length.toString()));
    reader(routeManager).pop();
    _setState();
  }

  void updateMovie(MovieModel data) {
    movies[movies.indexWhere((element) => element.id == data.id)] = data;
    reader(routeManager).pop();
    _setState();
  }

  void deleteMovie(String id) {
    movies.removeWhere((element) => element.id == id);
    reader(routeManager).pop();
    _setState();
  }

  void onAddNewMovie() {
    reader(routeManager).push(MovieDetailRoute(appState: AppState.add));
  }

  void onTapMovie(MovieModel data) {
    reader(routeManager).push(MovieDetailRoute(appState: AppState.update, data: data));
  }

  void _setState() => notifyListeners();
}
