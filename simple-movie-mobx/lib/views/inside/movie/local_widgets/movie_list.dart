import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:movie_app_test/core/viewmodels/movie/movie_viewmodel.dart';

class MovieList extends StatelessWidget {
  const MovieList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _viewModel = context.watch<MovieViewModel>();

    return Observer(
      builder: (context) {
        return ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () => _viewModel.onTapMovie(_viewModel.movies[index]),
              title: Text(_viewModel.movies[index].title ?? ''),
              subtitle: Text(_viewModel.movies[index].summary ?? ''),
            );
          },
          separatorBuilder: (context, index) => Divider(color: Colors.black),
          itemCount: _viewModel.movies.length,
        );
      },
    );
  }
}
