import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:tremors/models/search.dart';

class SearchManager extends ChangeNotifier {
  SearchManager();

  final List<Search> _savedOnes = [
    for (final i in [
      1,
      2,
      3,
      4,
      5,
      6,
      7,
      8,
      9,
      10,
      11,
      12,
      13,
      14,
      15,
      1600000000000000,
      17,
      18,
      19,
      20,
      21,
      22,
      23,
      24,
      25,
      3000000000000000000
    ])
      Search(
        id: i.toString(),
        title:
            "It is supposed to be a text which the user says what they want for Search $i",
        selected: false,
      )
  ];

  List<Search> get savedOnes => UnmodifiableListView(_savedOnes);

  factory SearchManager.create(BuildContext context) {
    return SearchManager();
  }
}
