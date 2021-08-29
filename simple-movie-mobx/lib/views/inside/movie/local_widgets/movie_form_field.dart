import 'package:flutter/material.dart';

class MovieFormField extends StatelessWidget {
  final String label;
  final int? maxLines;
  final TextEditingController textEditingController;
  const MovieFormField({Key? key, required this.label, this.maxLines = 1, required this.textEditingController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      controller: textEditingController,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This field is required';
        }

        return null;
      },
      decoration: InputDecoration(
        labelText: label,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blueAccent,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 1.0,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.0,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.0,
          ),
        ),
      ),
    );
  }
}
