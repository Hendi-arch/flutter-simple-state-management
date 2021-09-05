import 'package:flutter/material.dart';

class SpacerWidget extends StatelessWidget {
  final double size;
  const SpacerWidget({Key? key, this.size = 10}) : super(key: key);

  @override
  Widget build(_) => SizedBox(height: size, width: size);
}
