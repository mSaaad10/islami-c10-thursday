import 'package:flutter/material.dart';

class QuranDetails extends StatelessWidget {
  String quranText;
  int index;

  QuranDetails({required this.quranText, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center, child: Text('${quranText} (${index})'));
  }
}
