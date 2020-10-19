import 'dart:math';

import 'package:flutter/painting.dart';

Color colorRandomGenerator() {
  Random random = Random();
  return Color.fromARGB(
    255,
    random.nextInt(255),
    random.nextInt(255),
    random.nextInt(255),
  );
}
