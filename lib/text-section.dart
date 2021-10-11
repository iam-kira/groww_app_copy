import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final Color _color;
  // final String _title;


  TextSection(this._color);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.red),
    );
  }
}
