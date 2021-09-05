import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app_test/core/viewmodels/movie/movie_viewmodel.dart';
import 'package:movie_app_test/views/inside/movie/local_widgets/movie_list.dart';
import 'package:movie_app_test/views/widgets/button_widget.dart';

class MovieView extends ConsumerWidget {
  const MovieView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef reference) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('Movies'),
        actions: [
          ButtonWidget(
            onPressed: reference.read(movieViewModel).onAddNewMovie,
            caption: 'New',
          ),
        ],
      ),
      body: MovieList(),
    );
  }
}
