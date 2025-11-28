// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';

class JollyGradients {
  static const editorsPickContainerGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFF142915), Color(0xFF468F49)],
  );

  static const trendingEpisodeContainerGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFF00000000), Color(0xFF152A16)],
    stops: [0.0, 0.7],
  );
}
