import 'package:get/get.dart';
import 'package:movie_app_test/app/app_router.gr.dart';
import 'package:movie_app_test/core/constant/enums.dart';
import 'package:movie_app_test/core/models/movie_model.dart';

class MovieViewModel extends GetxController {
  static final _appRouter = Get.put(AppRouter());

  RxList<MovieModel> movies = RxList<MovieModel>();

  void addMovie(MovieModel data) {
    movies.add(data.copyWith(id: movies.length.toString()));
    _appRouter.pop();
  }

  void updateMovie(MovieModel data) {
    movies[movies.indexWhere((element) => element.id == data.id)] = data;
    _appRouter.pop();
  }

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
