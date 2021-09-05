import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app_test/core/viewmodels/movie/movie_viewmodel.dart';

class MovieList extends ConsumerWidget {
  const MovieList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef reference) {
    final _viewModel = reference.watch(movieViewModel);

    return ListView.separated(
      itemBuilder: (_, index) {
        return ListTile(
          onTap: () => _viewModel.onTapMovie(_viewModel.movies[index]),
          title: Text(_viewModel.movies[index].title ?? ''),
          subtitle: Text(_viewModel.movies[index].summary ?? ''),
        );
      },
      separatorBuilder: (_, __) => Divider(color: Colors.black),
      itemCount: _viewModel.movies.length,
    );
  }
}
