import 'package:flutter/material.dart';

class MovieDropDownField extends StatelessWidget {
  final String? value;
  final ValueChanged<String?> onChange;
  const MovieDropDownField({Key? key, required this.onChange, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String?>(
      value: value,
      onChanged: onChange,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This field is required';
        }

        return null;
      },
      items: <DropdownMenuItem<String?>>[
        DropdownMenuItem(
          child: Text('Action'),
          value: 'Action',
        ),
        DropdownMenuItem(
          child: Text('Comedy'),
          value: 'Comedy',
        ),
        DropdownMenuItem(
          child: Text('Fantasy'),
          value: 'Fantasy',
        ),
        DropdownMenuItem(
          child: Text('Horror'),
          value: 'Horror',
        ),
        DropdownMenuItem(
          child: Text('Sci-Fi'),
          value: 'Sci-Fi',
        ),
      ],
      decoration: InputDecoration(
        labelText: 'Tags',
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
