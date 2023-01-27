import 'dart:async';

import 'package:flutter/material.dart';

class Debouncer {
  Debouncer({required this.duration});
  final Duration duration;
  Timer? _timer;
  void run(VoidCallback action) {
    if (_timer?.isActive ?? false) {
      _timer?.cancel();
    }
    _timer = Timer(duration, action);
  }
}
