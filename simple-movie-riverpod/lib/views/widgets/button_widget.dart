import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String caption;
  final Color buttonColor;

  const ButtonWidget({
    Key? key,
    required this.onPressed,
    required this.caption,
    this.buttonColor = Colors.green,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(caption),
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(buttonColor)),
      ),
    );
  }
}
