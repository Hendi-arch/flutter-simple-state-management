import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:movie_app_test/core/constant/enums.dart';
import 'package:movie_app_test/core/models/movie_model.dart';
import 'package:movie_app_test/core/viewmodels/movie/movie_viewmodel.dart';
import 'package:movie_app_test/views/inside/movie/local_widgets/movie_drop_down_field.dart';
import 'package:movie_app_test/views/inside/movie/local_widgets/movie_form_field.dart';
import 'package:movie_app_test/views/widgets/button_widget.dart';
import 'package:movie_app_test/views/widgets/spacer_widget.dart';

class MovieDetail extends StatefulWidget {
  final MovieModel? data;
  final AppState appState;
  const MovieDetail({Key? key, required this.appState, this.data}) : super(key: key);

  @override
  _MovieDetailState createState() => _MovieDetailState();
}

class _MovieDetailState extends State<MovieDetail> {
  // holding data state for save
  String? selectedTags;
  final TextEditingController titleController = TextEditingController();
  final TextEditingController directorController = TextEditingController();
  final TextEditingController summaryController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  void _initializeData() {
    if (widget.data != null) {
      titleController.text = widget.data!.title!;
      directorController.text = widget.data!.director!;
      summaryController.text = widget.data!.summary!;
      selectedTags = widget.data!.tags!;
    }
  }

  void _validateForm(VoidCallback fn) {
    if (_formKey.currentState!.validate()) {
      fn();
    }
  }

  @override
  void initState() {
    _initializeData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _viewModel = context.watch<MovieViewModel>();

    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        if (!FocusScope.of(context).hasPrimaryFocus) FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leadingWidth: 20,
          title: Text(
            widget.appState != AppState.add ? 'Update Movie' : 'New Movie',
          ),
          actions: [
            if (widget.appState != AppState.add) ...[
              ButtonWidget(
                onPressed: () => _validateForm(() => _viewModel.updateMovie(MovieModel(
                      id: widget.data!.id,
                      title: titleController.text,
                      director: directorController.text,
                      summary: summaryController.text,
                      tags: selectedTags,
                    ))),
                caption: 'Update',
              ),
              ButtonWidget(
                onPressed: () => _validateForm(() => _viewModel.deleteMovie(widget.data!.id!)),
                caption: 'Delete',
              )
            ] else
              ButtonWidget(
                onPressed: () => _validateForm(() => _viewModel.addMovie(MovieModel(
                      title: titleController.text,
                      director: directorController.text,
                      summary: summaryController.text,
                      tags: selectedTags,
                    ))),
                caption: 'Save',
              ),
          ],
        ),
        body: Container(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            scrollDirection: Axis.vertical,
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SpacerWidget(),
                  MovieFormField(
                    label: 'Title',
                    textEditingController: titleController,
                  ),
                  SpacerWidget(),
                  MovieFormField(label: 'Director', textEditingController: directorController),
                  SpacerWidget(),
                  MovieDropDownField(onChange: (value) => selectedTags = value ?? '', value: selectedTags),
                  SpacerWidget(),
                  MovieFormField(
                    label: 'Summary',
                    maxLines: null,
                    textEditingController: summaryController,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
