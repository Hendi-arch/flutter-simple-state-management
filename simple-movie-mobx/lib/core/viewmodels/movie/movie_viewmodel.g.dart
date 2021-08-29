// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MovieViewModel on _MovieViewModel, Store {
  final _$moviesAtom = Atom(name: '_MovieViewModel.movies');

  @override
  ObservableList<MovieModel> get movies {
    _$moviesAtom.reportRead();
    return super.movies;
  }

  @override
  set movies(ObservableList<MovieModel> value) {
    _$moviesAtom.reportWrite(value, super.movies, () {
      super.movies = value;
    });
  }

  final _$_MovieViewModelActionController =
      ActionController(name: '_MovieViewModel');

  @override
  void addMovie(MovieModel data) {
    final _$actionInfo = _$_MovieViewModelActionController.startAction(
        name: '_MovieViewModel.addMovie');
    try {
      return super.addMovie(data);
    } finally {
      _$_MovieViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateMovie(MovieModel data) {
    final _$actionInfo = _$_MovieViewModelActionController.startAction(
        name: '_MovieViewModel.updateMovie');
    try {
      return super.updateMovie(data);
    } finally {
      _$_MovieViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteMovie(String id) {
    final _$actionInfo = _$_MovieViewModelActionController.startAction(
        name: '_MovieViewModel.deleteMovie');
    try {
      return super.deleteMovie(id);
    } finally {
      _$_MovieViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
movies: ${movies}
    ''';
  }
}
