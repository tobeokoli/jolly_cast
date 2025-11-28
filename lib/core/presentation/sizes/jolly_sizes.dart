import 'package:flutter/material.dart';

class JollySizes {
  const JollySizes._();

  static const double s0 = 0;
  static const double s0_1 = 0.1;
  static const double s0_15 = 0.15;
  static const double s0_2 = 0.2;
  static const double s0_3 = 0.3;
  static const double s0_35 = 0.35;
  static const double s0_4 = 0.4;
  static const double s0_5 = 0.5;
  static const double s0_6 = 0.6;
  static const double s1 = 1;
  static const double s2 = 2;
  static const double s3 = 3;
  static const double s4 = 4;
  static const double s5 = 5;
  static const double s6 = 6;
  static const double s7 = 7;
  static const double s8 = 8;
  static const double s10 = 10;
  static const double s11 = 11;
  static const double s12 = 12;
  static const double s13 = 13;
  static const double s14 = 14;
  static const double s15 = 15;
  static const double s16 = 16;
  static const double s17 = 17;
  static const double s18 = 18;
  static const double s20 = 20;
  static const double s21 = 21;
  static const double s22 = 22;
  static const double s23 = 23;
  static const double s24 = 24;
  static const double s25 = 25;
  static const double s26 = 26;
  static const double s27 = 27;
  static const double s30 = 30;
  static const double s31 = 31;
  static const double s36 = 36;
  static const double s37 = 37;
  static const double s40 = 40;
  static const double s45 = 45;
  static const double s47 = 47;
  static const double s48 = 48;
  static const double s50 = 50;
  static const double s51 = 51;
  static const double s73 = 73;
  static const double s77 = 77;
  static const double s80 = 80;
  static const double s85 = 85;
  static const double s90 = 90;
  static const double s100 = 100;
  static const double s102 = 102;
  static const double s120 = 120;
  static const double s128 = 128;
  static const double s130 = 130;
  static const double s150 = 150;
  static const double s153 = 153;
  static const double s155 = 155;
  static const double s170 = 170;
  static const double s178 = 178;
  static const double s180 = 180;
  static const double s200 = 200;
  static const double s204 = 204;
  static const double s321 = 321;

  static double topSpacing(BuildContext context) {
    final notchHeight = MediaQuery.of(context).viewPadding.top;
    if (notchHeight < s40) {
      return s40;
    } else {
      return notchHeight + s12;
    }
  }

  static double bottomSpacing(BuildContext context) {
    final notchHeight = MediaQuery.of(context).viewPadding.bottom;
    if (notchHeight < s5) {
      return s12;
    }
    return notchHeight;
  }
}
