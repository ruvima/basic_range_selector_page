import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final randomizerProvider =
    ChangeNotifierProvider(((ref) => RandomizerChangeNotifier()));

class RandomizerChangeNotifier extends ChangeNotifier {
  final _randomGenerator = Random();

  int? _generatedNumber;
  int? get generatedNumber => _generatedNumber;

  int min = 0;
  int max = 0;

  void generateRandomNumber() {
    _generatedNumber = min +
        _randomGenerator.nextInt(
          max + 1 - min,
        );

    notifyListeners();
  }
}
