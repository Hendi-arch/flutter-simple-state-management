import 'package:mobx/mobx.dart';
import 'package:movie_app_test/app/app_locator.dart';
import 'package:movie_app_test/app/app_router.gr.dart';
import 'package:movie_app_test/core/constant/enums.dart';
import 'package:movie_app_test/core/models/movie_model.dart';

part 'movie_viewmodel.g.dart';

class MovieViewModel = _MovieViewModel with _$MovieViewModel;

abstract class _MovieViewModel with Store {
  static final _appRouter = locator<AppRouter>();

  @observable
  ObservableList<MovieModel> movies = ObservableList<MovieModel>();

  @action
  void addMovie(MovieModel data) {
    movies.add(data.copyWith(id: movies.length.toString()));
    _appRouter.pop();
  }

  @action
  void updateMovie(MovieModel data) {
    movies[movies.indexWhere((element) => element.id == data.id)] = data;
    _appRouter.pop();
  }

  @action
  void deleteMovie(String id) {
    movies.removeWhere((element) => element.id == id);
    _appRouter.pop();
  }

  void onAddNewMovie() {
    _appRouter.push(MovieDetailRoute(appState: AppState.add));
  }

  void onTapMovie(MovieModel data) {
    _appRouter.push(MovieDetailRoute(appState: AppState.update, data: data));
  }
}
