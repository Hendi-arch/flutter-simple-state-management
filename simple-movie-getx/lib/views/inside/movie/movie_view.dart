import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app_test/core/viewmodels/movie/movie_viewmodel.dart';
import 'package:movie_app_test/views/inside/movie/local_widgets/movie_list.dart';
import 'package:movie_app_test/views/widgets/button_widget.dart';

class MovieView extends StatelessWidget {
  const MovieView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _viewModel = Get.put(MovieViewModel());

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('Movies'),
        actions: [
          ButtonWidget(
            onPressed: _viewModel.onAddNewMovie,
            caption: 'New',
          ),
        ],
      ),
      body: MovieList(),
    );
  }
}
